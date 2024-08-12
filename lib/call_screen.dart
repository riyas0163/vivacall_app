import 'package:flutter/cupertino.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID, required this.userName}) : super(key: key);
  final String callID;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 2069136757, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: 'df0967e68bd3c490c81ec0aa63a7b53e8f4095cd18f30698b8173088024c8740', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userName,
      userName: userName,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}

