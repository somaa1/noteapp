import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/widget/custom_app_bar.dart';
import 'package:noteapp/widget/custom_text_filed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            iconData: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextFiled(hint: 'Title'),
          SizedBox(
            height: 30,
          ),


          CustomTextFiled(hint: 'Content'),

        ],
      ),
    );
  }
}
