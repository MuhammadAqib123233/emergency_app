import 'package:flutter/material.dart';

class elevatedButton extends StatelessWidget {
  const elevatedButton({
    Key? key, this.txt1, required this.color, required this.onpress,
  }) : super(key: key);
  final txt1;
  final Color color;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
           fixedSize: const Size(250, 50),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.redAccent,
            elevation: 0,
            side:  BorderSide(
              width: 2.0,
              color: color,
            )),
        child: Text(txt1,style:const TextStyle(fontSize: 18),));
  }
}