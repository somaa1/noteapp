import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/cubits/notes_cubit/notes_cubit.dart';

import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print(state.errorMessage);
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllData();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(left:  16,right: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
