import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constans.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/notes_view.dart';

import 'custom_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = CustomBlocObserver();

  Hive.registerAdapter(NoteModelAdapter());

  var box = await Hive.openBox<NoteModel>(kNoteBox);

  if (!box.isOpen) {
    box = await Hive.openBox<NoteModel>(kNoteBox);
  }
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: NotesView(),
      ),
    );
  }
}
