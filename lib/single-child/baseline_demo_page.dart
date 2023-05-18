import 'package:flutter/material.dart';
import 'package:flutter_sample/base/base_page.dart';

class BaselineDemoPage extends BaseStatelessPage {
  static const router = "/BaselineDemoPage";
  const BaselineDemoPage({super.key}) : super(title: "BaselineDemoPage");

  @override
  Widget buildBody() {
    return Container(
      height: 50,
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      // A widget that positions its child according to the child's baseline.
      child: const Baseline(
        baseline:
            50, // Baseline child 的 baseline 和容器（height=50）对齐（如果baseline设置的值和容器的高度一样，那就是底部对齐，如果设置0，那就是baseline和容器的顶部对齐）
        baselineType: TextBaseline.ideographic,
        child: Text('green',
            style: TextStyle(
              fontSize: 24,
            )),
      ),
    );
  }
}
