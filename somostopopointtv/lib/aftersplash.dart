import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SomosTopoPointTV"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        ),
      body: WebView(
          initialUrl: "https://youtube.com",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            //_controller.complete(webViewController);
          },
        ),
    );
  }
}