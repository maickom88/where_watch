import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

class ControllerPage {
  static final page = RxNotifier<int>(0);
  static final controller = PageController();
}
