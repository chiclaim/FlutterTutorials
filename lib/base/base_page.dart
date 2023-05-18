import 'package:flutter/material.dart';

abstract class BaseStatelessPage extends StatelessWidget {
  const BaseStatelessPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(title)), body: buildBody());
  }

  Widget buildBody();
}
