import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../unit/app_text_style.dart';

class WebViewScreen extends StatelessWidget {
  final String? url;
  final String? title;

  const WebViewScreen({super.key, this.url, this.title});

  WebViewController _createController(BuildContext context) {
    final controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..clearCache()
          ..setNavigationDelegate(
            NavigationDelegate(
              onPageStarted: (_) => SmartDialog.showLoading(msg: 'Loading ...'),
              onPageFinished: (_) => SmartDialog.dismiss(),
              onWebResourceError: (_) => SmartDialog.dismiss(),
            ),
          )
          ..loadRequest(Uri.parse(url ?? 'https://example.com'));
    return controller;
  }

  @override
  Widget build(BuildContext context) {
    final controller = _createController(context);
    return Scaffold(appBar: AppBar(centerTitle: true, title: Text(title ?? '', style: AppTextStyle.style16B)), body: WebViewWidget(controller: controller));
  }
}
