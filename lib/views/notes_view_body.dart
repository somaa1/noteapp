import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/widget/custom_app_bar.dart';

import '../widget/notes_list_view.dart';
import 'custom_notes_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
@override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: 'Notes', iconData: FontAwesomeIcons.trash,),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}




