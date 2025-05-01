import 'package:flutter/material.dart';

class favouriteWidget extends StatefulWidget {
  const favouriteWidget({super.key});

  @override
  State<favouriteWidget> createState() => _favouriteWidgetState();
}

class _favouriteWidgetState extends State<favouriteWidget> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {

      setState(() {
        click = !click;
      });

    }, icon: Icon(Icons.favorite, color:  click ? Colors.red : Colors.grey ));

  }
}