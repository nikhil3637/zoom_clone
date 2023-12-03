import 'package:flutter/material.dart';
import 'package:zoom_clone/utilities/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  const CustomButton({Key? key, required this.text, required this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(text,style: TextStyle(color: Colors.white),),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(
            double.infinity,
            50
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)),
          side: BorderSide(color: buttonColor)
        ),
      ),
    );
  }
}
