import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
              color: Colors.grey.shade300,
              thickness: 0.5,
              indent: 20,
              endIndent: 5),
        ),
        Text(
          'Or sign in With'.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
              color: Colors.grey.shade300,
              thickness: 0.5,
              indent: 20,
              endIndent: 5),
        ),
      ],
    );
  }
}