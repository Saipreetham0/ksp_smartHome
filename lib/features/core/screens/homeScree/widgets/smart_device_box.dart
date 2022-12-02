import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ksp_smarthome/constants/colors.dart';

class SmartDeviceBox extends StatelessWidget {
  final String smartDeviceName;
  final String deviceIcon;
  final bool deviceStatus;
  void Function(bool)? onChanged;
  SmartDeviceBox({
    super.key,
    required this.smartDeviceName,
    required this.deviceIcon,
    required this.deviceStatus,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor:
                          deviceStatus ? tPrimaryColor : tLightGrey,
                      child: Icon(
                        Icons.lightbulb,
                        color: deviceStatus ? tWhiteColor : tGrey,
                        size: 20,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      // color: Colors.red,
                      height: 30, //set desired REAL HEIGHT
                      width: 35, //set desired REAL WIDTH
                      child: Transform.scale(
                        transformHitTests: false,
                        scale: .7,
                        child: CupertinoSwitch(
                          value: deviceStatus,
                          onChanged: onChanged,
                          activeColor: tPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(smartDeviceName,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '6 Devices',
                  style: TextStyle(
                    fontSize: 12,
                    color: tGrey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '⚡️ Consumption: 1.2kW',
                  style: TextStyle(
                    fontSize: 12,
                    color: tGrey,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
