import 'dart:async';

import 'package:html_view/html_view.dart';

HtmlView createHtmlView() =>
    throw UnsupportedError(HtmlView.unsupportedErrorMessage);

class HtmlViewMobile implements HtmlView {
  @override
  void initView(String viewId,
      {required String styleWidth,
      required String styleHeight,
      required String width,
      required String height,
      required String src}) {
    throw UnsupportedError(HtmlView.unsupportedErrorMessage);
  }

  @override
  StreamSubscription listen(void Function(dynamic p1)? onData,
      {Function? onError, void Function()? onDone, bool? cancelOnError}) {
    throw UnsupportedError(HtmlView.unsupportedErrorMessage);
  }
}
