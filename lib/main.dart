import 'package:flutter/material.dart';
import 'package:flutter_sample/multi-child/column_demo_page.dart';
import 'package:flutter_sample/single-child/align_demo_page.dart';
import 'package:flutter_sample/single-child/aspect_demo_ratio.dart';
import 'package:flutter_sample/single-child/baseline_demo_page.dart';
import 'package:flutter_sample/single-child/expanded_demo_page.dart';
import 'package:flutter_sample/single-child/transform_demo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: "FlutterDemo"),
        AlignDemoPage.router: (context) => const AlignDemoPage(),
        AspectRatioDemoPage.router: (context) => const AspectRatioDemoPage(),
        BaselineDemoPage.router: (context) => const BaselineDemoPage(),
        ExpandedDemoPage.router: (context) => const ExpandedDemoPage(),
        TransformDemoPage.router: (context) => const TransformDemoPage(),
        ColumnDemoPage.router: (context) => const ColumnDemoPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class PageBean {
  final String text;
  final String router;
  PageBean({required this.text, required this.router});
}

class _MyHomePageState extends State<MyHomePage> {
  final items = [
    PageBean(text: "AlignDemoPage", router: AlignDemoPage.router),
    PageBean(text: "AspectRatioDemoPage", router: AspectRatioDemoPage.router),
    PageBean(text: "BaselineDemoPage", router: BaselineDemoPage.router),
    PageBean(text: "ExpandedDemoPage", router: ExpandedDemoPage.router),
    PageBean(text: "TransformDemoPage", router: TransformDemoPage.router),
    PageBean(text: "ColumnDemoPage", router: ColumnDemoPage.router),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) => const Divider(
                  color: Colors.black12,
                  height: 1,
                ),
            padding: const EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, items[index].router);
                },
                child: Container(
                  height: 50,
                  color: Colors.white,
                  child: Center(child: Text(items[index].text)),
                ),
              );
            }));
  }
}
