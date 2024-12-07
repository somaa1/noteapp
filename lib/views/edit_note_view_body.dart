import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/widget/custom_app_bar.dart';
import 'package:noteapp/views/widget/custom_text_filed.dart';
import 'package:noteapp/views/widget/edit_note_colors_list_view.dart';

import '../cubits/notes_cubit/notes_cubit.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllData();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            iconData: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextFiled(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFiled(
            hint: widget.note.subtitle,
            onChanged: (value) {
              content = value;
            },
          ),
          SizedBox(height: 30,),
          EditNoteColorsList(
            note: widget.note,
          )
        ],
      ),
    );
  }
}
