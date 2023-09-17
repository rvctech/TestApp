import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(this.buttonText, this.onTap, {super.key});
  final String buttonText;
  final void Function() onTap;
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
        ),
        onPressed:onTap,
        child: Text(buttonText),
      ),
    );
  }
}
