import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewEg extends StatefulWidget {
  const WebViewEg({Key? key}) : super(key: key);

  @override
  _WebViewEgState createState() => _WebViewEgState();
}

class _WebViewEgState extends State<WebViewEg> {
  final _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web View Use'),
        // centerTitle: true,
        actions: [
          navButton(Icons.chevron_left, (controller) {
            _goBack(controller!);
          }),
            navButton(
                Icons.chevron_right, (controller) => _goForward(controller!)),
        ],
      ),
      body: WebView(
        initialUrl: "https://github.com/imobasshir",
        onWebViewCreated: (controller) => _controller.complete(controller),
      ),
      // bottomNavigationBar: Container(
      //   color: Theme.of(context).colorScheme.secondary,
      //   child: ButtonBar(
      //     children: [
      //       navButton(Icons.chevron_left, (controller) => _goBack(controller)),
      //       navButton(
      //           Icons.chevron_right, (controller) => _goForward(controller)),
      //     ],
      //   ),
      // ),
    );
  }

  Widget navButton(IconData icon, Function(WebViewController? data) onPressed) {
    return FutureBuilder(
      future: _controller.future,
      builder: (context, AsyncSnapshot<WebViewController> snapshot) {
        if (snapshot.hasData) {
          return IconButton(
            onPressed: () => onPressed(snapshot.data),
            icon: Icon(
              icon,
              color: Colors.white,
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }

  Future<void> _goBack(WebViewController controller) async {
    final canGoBack = await controller.canGoBack();

    if (canGoBack) {
      controller.goBack();
    }
  }

  Future<void> _goForward(WebViewController controller) async {
    final canGoForward = await controller.canGoForward();

    if (canGoForward) {
      controller.goForward();
    }
  }
}
