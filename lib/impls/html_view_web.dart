import 'dart:html' as html;
import 'dart:ui' as ui;
import 'dart:async';

import 'package:html_view/html_view.dart';

HtmlView createHtmlView() => HtmlViewWeb();

class HtmlViewWeb implements HtmlView {
  @override
  void initView(
    String viewId, {
    required String styleWidth,
    required String styleHeight,
    required String width,
    required String height,
    required String src,
  }) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      viewId,
      (int id) => html.IFrameElement()
        ..style.width = styleWidth
        ..style.height = styleHeight
        ..width = width
        ..height = height
        ..src = src
        ..style.border = 'none'
        ..appendHtml('<div id="html_view" hidden>html_view<div>'),
    );
  }

  @override
  StreamSubscription listen(
    void Function(html.MessageEvent event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return html.window.onMessage.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }
}
