import 'package:flutter/material.dart';
import 'package:flutter_sample/base/base_page.dart';

class AspectRatioDemoPage extends BaseStatelessPage {
  static const router = "/AspectRatioDemoPage";
  const AspectRatioDemoPage({super.key}) : super(title: "AspectRatioDemo");

  @override
  Widget buildBody() {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      width: double.infinity,
      height: 100.0,
      // A widget that attempts to size the child to a specific aspect ratio.
      child: AspectRatio(
        aspectRatio: 16 / 8, // 设置 child 宽高比例，例如 16:8
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
