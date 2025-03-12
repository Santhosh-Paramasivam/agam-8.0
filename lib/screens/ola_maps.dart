import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import 'package:agam/utils/local_host_server.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late WebViewControllerPlus _controller;
  double _height = 700; 

  @override
  void initState() {
    super.initState();

    _controller = WebViewControllerPlus()
      ..loadFlutterAssetWithServer('assets/ola_maps.html', ServerDetails.localhostServer.port!)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (url) {
            if (kDebugMode) {
              print("Page finished loading: $url");
            }
            _controller.getWebViewHeight().then((h) {
              var height = double.parse(h.toString());
              if (height != _height) {
                if (kDebugMode) {
                  print("Height is: $height");
                }
                setState(() {
                  _height = height;
                });
              }
            });
          },
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('webview_flutter_plus Example'),
      ),
      body: Column(children: [
        Expanded(
          child: SizedBox(
            height: _height, 
            child: WebViewWidget(
              controller: _controller,
            ),
          ),
        ),
        const Text("End of WebviewPlus", style: TextStyle(fontWeight: FontWeight.bold)),
      ]),
    );
  }
}
