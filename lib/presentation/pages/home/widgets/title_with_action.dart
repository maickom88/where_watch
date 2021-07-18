import 'package:flutter/material.dart';

class TitleWithAction extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const TitleWithAction({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title.trim(),
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        TextButton(
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Veja mais'),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        )
      ],
    );
  }
}
