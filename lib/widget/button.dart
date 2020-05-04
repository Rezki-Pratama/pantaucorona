import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  CustomButton({this.buttonText, this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.width * 0.1,
      child: Container(
        child: Material(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(0.5),
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            splashColor: Colors.amber,
            onTap: onPressed,
            child: Center(
              child: Text(buttonText,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700)),
            ),
          ),
        ),
      ),
    );
  }
}