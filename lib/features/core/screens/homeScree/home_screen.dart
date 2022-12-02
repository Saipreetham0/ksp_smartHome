import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ksp_smarthome/constants/colors.dart';
import 'package:ksp_smarthome/constants/sizes.dart';
import 'package:ksp_smarthome/features/core/screens/devices/device_page.dart';
import 'package:ksp_smarthome/features/core/screens/homeScree/widgets/energy_consumption_widget.dart';
import 'package:ksp_smarthome/features/core/screens/homeScree/widgets/smart_device_box.dart';
import 'package:toggle_switch/toggle_switch.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List mySmartDevices = [
    ["Bed Room", 'notifications', true],
    ["Living Room", "notifications", true],
    ["Bathroom", "notifications", false],
    ["Kitchen", "notifications", true],
    ["Ksp Room", "notifications", true],
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          body: Container(
        color: tLighterGrey,
        padding: const EdgeInsets.all(tDefaultSize - 10),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.person,
                  size: 30,
                ),
                Spacer(),
                Icon(
                  Icons.notifications,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hello, Sai Preetham',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            energy_Consumption_Widget(),
            const SizedBox(height: 10),
            Container(
              width: 220,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: tWhiteColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ToggleSwitch(
                    minWidth: 100.0,
                    cornerRadius: 20.0,
                    activeBgColor: const [tSecondaryColor],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.white,
                    inactiveFgColor: Colors.black,
                    initialLabelIndex: 0,
                    totalSwitches: 2,
                    labels: const ['Rooms', 'Devices'],
                    radiusStyle: true,
                    onToggle: (index) {
                      // print('switched to: $index');
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: GridView.builder(
                    itemCount: mySmartDevices.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (contex, index) {
                      return GestureDetector(
                        onTap: () {
                          // print(index);
                          Get.to(() => devicePage(),
                              arguments: mySmartDevices[index][0]);
                        },
                        child: SmartDeviceBox(
                          smartDeviceName: mySmartDevices[index][0],
                          deviceIcon: mySmartDevices[index][1],
                          deviceStatus: mySmartDevices[index][2],
                          onChanged: (value) =>
                              powerSwitchChanged(value, index),
                        ),
                      );
                    }))
          ],
        ),
      )),
    );
  }
}
