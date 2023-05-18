import 'package:flutter/material.dart';
import 'package:flutter_sample/base/base_page.dart';

class AlignDemoPage extends BaseStatelessPage {
  static const router = "/alignPage";
  const AlignDemoPage({super.key}) : super(title: "AlignWidgetDemo");

  @override
  Widget buildBody() {
    return Center(
      child: Container(
        height: 120.0,
        width: 120.0,
        color: Colors.blue[50],
        child: const Align(
          alignment: Alignment.topRight, // 展示在右上角
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
