
import 'package:flutter/material.dart';

import 'custom_bottom.dart';
import 'custom_text_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}
final GlobalKey<FormState>formkey = GlobalKey();
AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
String? title,suptitle;
class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode:autovalidateMode ,
      key: formkey,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFiled(
            onsaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onsaved: (value) {
              suptitle = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(height: 30,),

          CustomBottom(ontap: () {
            if(formkey.currentState!.validate()){
              formkey.currentState!.save();
            }else{
              autovalidateMode= AutovalidateMode.always;
            }
          },),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
