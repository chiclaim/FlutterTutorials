import 'package:flutter/material.dart';
import 'package:flutter_sample/base/base_page.dart';

class ExpandedDemoPage extends BaseStatelessPage {
  static const router = "/ExpandedDemoPage";
  const ExpandedDemoPage({super.key}) : super(title: "ExpandedDemoPage");

  @override
  Widget buildBody() {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.amber,
              height: 100,
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 50,
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
