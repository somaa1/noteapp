import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:intl/intl.dart';
import 'package:noteapp/views/widget/color_list_view.dart';

import 'custom_bottom.dart';
import 'custom_text_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formkey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subtitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
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
              subtitle = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 30,
          ),
          ColorsListView(),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomBottom(
                isloading: state is AddNoteLoading ? true : false,
                ontap: () {
                  if (formkey.currentState!.validate()) {

                    var currentDate = DateTime.now();

                    var formattedCurrentDate =
                    DateFormat('dd-MM-yyyy', 'en_US').format(currentDate);
                    formkey.currentState!.save();
                    var modelNote = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        data: formattedCurrentDate,
                        color: Colors.redAccent.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(modelNote);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

