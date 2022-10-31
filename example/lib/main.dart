import 'package:flutter/material.dart';
import 'package:intercom_objc/flutter_intercom.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Intercom.instance.initialize(
    'aynalgqi',
    androidApiKey: 'android_sdk-877592dfb3033e95edb4a49fa480822610e8cc2a',
    iosApiKey: 'ios_sdk-db22454404b59bec9aefe339adb4c6afff2a7cd7',
  );
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Intercom example app'),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              // NOTE:
              // Messenger will load the messages only if the user is registered
              // in Intercom.
              // Either identified or unidentified.
              // So make sure to login the user in Intercom first before opening
              // the intercom messenger.
              // Otherwise messenger will not load.
              Intercom.instance.displayMessenger();
            },
            child: const Text('Show messenger'),
          ),
        ),
      ),
    );
  }
}
