import 'dart:async';

import 'package:flutter/material.dart';
import 'package:html_view/html_view.dart';

void main() {
  runApp(HtmlViewExample());
}

class HtmlViewExample extends StatefulWidget {
  HtmlViewExample({Key? key}) : super(key: key);

  @override
  State<HtmlViewExample> createState() => _HtmlViewExampleState();
}

class _HtmlViewExampleState extends State<HtmlViewExample> {
  final HtmlView htmlView = HtmlView();
  final String viewID = "viewId";
  late final StreamSubscription subscription;

  @override
  void initState() {
    super.initState();
    initListener();
  }

  initListener() {
    subscription = htmlView.listen((event) async {
      print(event);
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    htmlView.initView(
      viewID,
      styleWidth: "100px",
      styleHeight: "500px",
      width: "100px",
      height: "500px",
      src: 'screen/index.html',
    );
    return SizedBox(
      height: 500,
      child: HtmlElementView(
        viewType: viewID,
      ),
    );
  }
}
