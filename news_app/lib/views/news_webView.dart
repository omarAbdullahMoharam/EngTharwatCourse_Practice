import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebView extends StatefulWidget {
  const NewsWebView({super.key, required this.url});
  final String url;

  @override
  State<NewsWebView> createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
  late WebViewController controller = WebViewController();

  @override
  void initState() {
    controller = WebViewController()..loadRequest(Uri.parse(widget.url));
    super.initState();
    log(controller.currentUrl().toString());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
