import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ksp_smarthome/constants/colors.dart';
import 'package:ksp_smarthome/constants/sizes.dart';

class devicePage extends StatefulWidget {
  const devicePage({super.key});

  @override
  State<devicePage> createState() => _devicePageState();
}

class _devicePageState extends State<devicePage> {
  List MyDeviceNames = [
    'AC',
    'TV',
    'Fan',
    'Light',
    'Fridge',
    'Washing Machine',
    'Microwave',
    'Oven'
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: Container(
              color: tWhiteColor,
              height: 60,
              child: Row(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Add a new device',
                      style: TextStyle(
                          color: tPrimaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            body: Container(
              color: tLightGrey,
              padding: const EdgeInsets.all(tDefaultSize - 15),
              child: Column(children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: tWhiteColor.withOpacity(0.5),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 20,
                          color: tblack,
                        ),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: tWhiteColor.withOpacity(0.5),
                      child: IconButton(
                        icon: const Icon(
                          Icons.more_horiz,
                          color: tblack,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                // body

                const SizedBox(height: 10),

                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: MyDeviceNames.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: tWhiteColor,
                                border: Border.all(
                                  color: tGrey,
                                  width: 2,
                                ),
                              ),
                              child: const Icon(
                                Icons.lightbulb,
                                color: tPrimaryColor,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              MyDeviceNames[index],
                              style: const TextStyle(
                                  color: tblack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            width: 180,
                            height: 80,
                            // color: tWhiteColor,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: tWhiteColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text('AC',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 30, //set desired REAL HEIGHT
                                      width: 35, //set desired REAL WIDTH
                                      child: Transform.scale(
                                        transformHitTests: false,
                                        scale: .7,
                                        child: CupertinoSwitch(
                                          value: true,
                                          onChanged: (bool value) {
                                            setState(() {});
                                          },
                                          activeColor: tPrimaryColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Samsung',
                                        style: TextStyle(
                                            fontSize: 13, color: tGrey)),
                                    Text('1.3kw',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: tSecondaryColor)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    )),

                // const SizedBox(height: 10),

                // Container(
                //   width: 100,
                //   height: 100,
                //   color: tWhiteColor,
                // )
              ]),
            )));
  }
}
