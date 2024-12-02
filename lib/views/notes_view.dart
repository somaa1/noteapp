import 'package:flutter/material.dart';
import 'package:noteapp/views/notes_view_body.dart';

import '../widget/add_note_bootom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context) {
          return AddNoteBottomSheet();
        },);

      },child: Icon(Icons.add),),
        body:  NotesViewBody());
  }
}


