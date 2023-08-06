import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final void Function()? onPressed;
  final String text;

  MyButton({
    required this.onPressed,
    required this.text,
  });

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(04),
      ),
      padding: EdgeInsets.all(0),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(251, 79, 20, 25),
              Color.fromRGBO(253, 88, 0, 12),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(04),
        ),
        child: Container(
          height: 50,
          alignment: Alignment.center,
          child: Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
