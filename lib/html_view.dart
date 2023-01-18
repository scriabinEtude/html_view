library html_view;

import 'impls/html_view_stub.dart'
    if (dart.library.io) 'impls/html_view_app.dart'
    if (dart.library.html) 'impls/html_view_web.dart';
import 'dart:async';

abstract class HtmlView {
  factory HtmlView() => createHtmlView();

  static const unsupportedErrorMessage = "UnSupported Platform";

  void initView(
    String viewId, {
    required String styleWidth,
    required String styleHeight,
    required String width,
    required String height,
    required String src,
  });

  StreamSubscription<dynamic> listen(
    void Function(dynamic)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  });
}
