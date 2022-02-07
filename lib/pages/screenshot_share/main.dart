import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class TakeScreenshot extends StatefulWidget {
  const TakeScreenshot({Key? key}) : super(key: key);

  @override
  _TakeScreenshotState createState() => _TakeScreenshotState();
}

class _TakeScreenshotState extends State<TakeScreenshot> {
  final _screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Screenshot(
              controller: _screenshotController,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Image.asset('images/flutter.png'),
                      const Text(
                        'Flutter Logo',
                        textScaleFactor: 1.6,
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Take Screenshot and Share',
                  textScaleFactor: 1.4,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                IconButton(
                  onPressed: _takeScreenshot,
                  icon: const Icon(
                    Icons.share,
                  ),
                  tooltip: 'Share',
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _takeScreenshot() async {
    final imageFile = await _screenshotController.capture();
    final directory = await getApplicationDocumentsDirectory();
    final imagePath = await File('${directory.path}/image.png').create();
    await imagePath.writeAsBytes(imageFile!);

    await Share.shareFiles(
      [imagePath.path],
      text: 'Image shared Using Flutter App',
    );
  }
}
