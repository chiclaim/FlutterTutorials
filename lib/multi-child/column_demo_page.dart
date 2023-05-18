import 'package:flutter/material.dart';
import 'package:flutter_sample/base/base_page.dart';

class ColumnDemoPage extends BaseStatelessPage {
  static const router = "/ColumnDemoPage";
  const ColumnDemoPage({super.key}) : super(title: "ColumnDemoPage");

  @override
  Widget buildBody() {
    return Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Text("hi"),
            Text("world"),
          ],
        ));
  }
}
