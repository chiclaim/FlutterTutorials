import 'dart:developer';

import 'package:flutter/material.dart';

//from https://book.flutterchina.club/chapter7/inherited_widget.html#_7-2-1-inheritedwidget

class InheritedWidgetTestRoute extends StatefulWidget {
  static const router = "/StatefulWidgetPage";
  @override
  _InheritedWidgetTestRouteState createState() =>
      _InheritedWidgetTestRouteState();
}

class _InheritedWidgetTestRouteState extends State<InheritedWidgetTestRoute> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("_InheritedWidgetTestRouteState.build");
    return Container(
        color: Colors.white,
        child: Center(
          child: ShareDataWidget(
            //使用ShareDataWidget
            data: count,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: _TestWidget(), //子widget中依赖ShareDataWidget
                ),
                ElevatedButton(
                  child: Text("Increment"),
                  //每点击一次，将count自增，然后重新build,ShareDataWidget的data将被更新
                  onPressed: () => setState(() => ++count),
                )
              ],
            ),
          ),
        ));
  }
}

class _TestWidget extends StatefulWidget {
  @override
  State createState() => __TestWidgetState();
}

class __TestWidgetState extends State<_TestWidget> {


  @override
  Widget build(BuildContext context) {
    // ShareDataWidget.of(context)!.data.toString();
    //使用InheritedWidget中的共享数据
    debugPrint("_InheritedWidgetTestRouteState.build");
    return Text(ShareDataWidget.of(context)!.data.toString());
  }

  @override //下文会详细介绍。
  void didChangeDependencies() {
    super.didChangeDependencies();
    //父或祖先widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
    //如果build中没有依赖InheritedWidget，则此回调不会被调用。
    debugPrint("Dependencies change-----");
  }
}

class ShareDataWidget extends InheritedWidget {
  ShareDataWidget({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  final int data; //需要在子树中共享的数据，保存点击次数

  //定义一个便捷方法，方便子树中的widget获取共享数据
  static ShareDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  //该回调决定当data发生变化时，是否通知子树中依赖data的Widget重新build
  @override
  bool updateShouldNotify(ShareDataWidget old) {
    debugPrint("updateShouldNotify:${(old.data != data)}");
    return old.data != data;
  }
}
