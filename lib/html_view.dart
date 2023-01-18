library html_view;

import 'impls/html_view_stub.dart'
    if (dart.library.io) 'impls/html_view_mobile.dart'
    if (dart.library.html) 'impls/html_view_web.dart';
import 'dart:async';

/// ### Html 파일을 화면에 보여준다.
/// [pub.dev](https://pub.dev/packages/html_view)\
/// [git](https://github.com/scriabinEtude/html_view)
///
/// **eg)**
/// ```dart
/// final HtmlView htmlView = HtmlView();
/// final String viewID = "viewId";
/// late final subscription;
///
/// @override
/// void initState() {
///   super.initState();
///   initListener();
/// }
///
/// initListener() {
///   htmlView.listen((event) async {
///     ...
///   });
/// }
///
/// @override
/// void dispose() {
///   subscription.cancel();
///   super.dispose();
/// }
///
/// @override
/// Widget build(BuildContext context) {
///   htmlView.initView(
///     viewID,
///     styleWidth: "100px",
///     styleHeight: "500px",
///     width: "100px",
///     height: "500px",
///     src: 'screen/index.html',
///   );
///   return SizedBox(
///     height: 500,
///     child: HtmlElementView(
///       viewType: viewID,
///     ),
///   );
/// }
///
/// ```
///
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
