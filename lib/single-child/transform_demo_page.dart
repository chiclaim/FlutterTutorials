import 'package:flutter/material.dart';
import 'package:flutter_sample/base/base_page.dart';

class TransformDemoPage extends BaseStatelessPage {
  static const router = "/TransformDemoPage";
  const TransformDemoPage({super.key}) : super(title: "TransformDemoPage");

  @override
  Widget buildBody() {
    return ColoredBox(
      color: Colors.black,
      child: Transform(
        alignment: Alignment.topRight,
        transform: Matrix4.skewY(0.3)..rotateZ(-3.14 / 12.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: const Color(0xFFE8581C),
          child: const Text('Apartment for rent!'),
        ),
      ),
    );
  }
}
