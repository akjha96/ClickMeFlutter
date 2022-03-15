import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  final String bodyText;
  const TextBody({required this.bodyText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      bodyText,
      style: const TextStyle(
        color: Color.fromARGB(204, 14, 25, 37),
        fontSize: 27,
        fontWeight: FontWeight.normal,
      ),
      textAlign: TextAlign.center,
    );
  }
}
