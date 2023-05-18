import 'package:flutter/material.dart';
import 'package:flutter_sample/base/base_page.dart';

class ColumnDemoPage extends BaseStatelessPage {
  static const router = "/ColumnDemoPage";
  const ColumnDemoPage({super.key}) : super(title: "ColumnDemoPage");

  @override
  Widget buildBody() {
    return Container(
        color: Colors.blue,
        // width: double.infinity, // 宽度 match-parent
        // Layout a list of child widgets in the vertical direction.
        // mainAxis = vertical direction
        child: Column(
          // 侧轴居中
          crossAxisAlignment: CrossAxisAlignment.center,
          // 默认 mainAxisSize=MainAxisSize.max：沿着主轴mainAxis方向，占用最大的可用空间
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Text("hi"),
            Text("world"),
          ],
        ));
  }
}
