import 'package:flutter/material.dart';

class RoundButton extends StatefulWidget {

  final height, width;
  final Color buttonColor, textColor;
  final isLoaing;
  final title;
  final VoidCallback callback;


  const RoundButton({
    super.key,
    this.height = 50.0,
    this.width = 150.0,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
    this.isLoaing = false,
    required this.title,
    required this.callback
  });

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.callback,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(999)
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              color: widget.textColor
            ),
          ),
        ),
      ),
    );
  }
}
