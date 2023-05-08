import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFieldUsername extends StatefulWidget {
  CustomTextFieldUsername(
      {super.key, required this.title, required this.controller});
  final String title;
  TextEditingController controller = TextEditingController();

  @override
  State<CustomTextFieldUsername> createState() =>
      _CustomTextFieldUsernameState();
}

class _CustomTextFieldUsernameState extends State<CustomTextFieldUsername> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.transparent,
      width: width / 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              controller: widget.controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Something';
                }

                // using regular expression
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please enter a valid email address";
                }

                // the email is valid
                return null;
              },
              decoration: InputDecoration(
                hintText: widget.title,
                labelText: widget.title,
                enabledBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
                errorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent)),
                helperText: 'example@gmail.com',
                helperStyle: const TextStyle(color: Colors.white),
                labelStyle: const TextStyle(color: Colors.white),
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
