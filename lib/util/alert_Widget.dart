import 'package:flutter/material.dart';

class alert_Widget extends StatelessWidget {
  const alert_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // alignment: Alignment.bottomCenter,
      backgroundColor: Colors.deepOrange,
      title: Text('Opreation State '),
      content: SizedBox(
        width: 500,
        child: Text('Succsuflyy added ! ')),
    );
  }
}