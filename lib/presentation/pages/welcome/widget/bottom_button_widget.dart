import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/theme.dart';
import '../../../components/components.dart';

class BottonButtom extends StatelessWidget {
  final VoidCallback onTap;
  const BottonButtom({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SizedBox(
        width: Get.width.percent(20),
        height: Get.width.percent(20),
        child: WWButton(
          onTap: onTap,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
