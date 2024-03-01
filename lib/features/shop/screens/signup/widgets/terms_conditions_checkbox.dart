import 'package:flutter/material.dart';

class TermsAndConditionCheckbox extends StatelessWidget {
  const TermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(
                value: true,
                activeColor: Colors.green,
                onChanged: (value) {})),
        const SizedBox(
          width: 16.0,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${'I agree to'} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: 'Privacy Policy',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.green)),
          TextSpan(
              text: ' ${'and'} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: 'Terms of use',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.green)),
        ]))
      ],
    );
  }
}