import 'package:flutter/material.dart';
import 'package:noteapp/constans.dart';
import 'package:noteapp/widget/custom_text_filed.dart';

import 'custom_bottom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextFiled(
              hint: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFiled(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 30,),
            
            CustomBottom(),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
