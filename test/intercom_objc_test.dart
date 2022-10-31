// import 'package:flutter_test/flutter_test.dart';
// import 'package:intercom_objc/intercom_objc.dart';
// import 'package:intercom_objc/intercom_objc_platform_interface.dart';
// import 'package:intercom_objc/intercom_objc_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockIntercomObjcPlatform
//     with MockPlatformInterfaceMixin
//     implements IntercomObjcPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final IntercomObjcPlatform initialPlatform = IntercomObjcPlatform.instance;

//   test('$MethodChannelIntercomObjc is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelIntercomObjc>());
//   });

//   test('getPlatformVersion', () async {
//     IntercomObjc intercomObjcPlugin = IntercomObjc();
//     MockIntercomObjcPlatform fakePlatform = MockIntercomObjcPlatform();
//     IntercomObjcPlatform.instance = fakePlatform;

//     expect(await intercomObjcPlugin.getPlatformVersion(), '42');
//   });
// }
