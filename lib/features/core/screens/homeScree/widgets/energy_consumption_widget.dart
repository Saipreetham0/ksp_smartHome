import 'package:flutter/material.dart';
import 'package:ksp_smarthome/constants/colors.dart';

Container energy_Consumption_Widget() {
  return Container(
    // margin: const EdgeInsets.only(top: 20),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: tPrimaryColor,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),

          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: tLightGrey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Energy Consumption',
                    style: TextStyle(
                        color: tWhiteColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: tblack.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.calendar_month,
                          color: tWhiteColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '16 Nov, 2022',
                          style: TextStyle(
                              color: tWhiteColor, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: tLightGrey.withOpacity(0.2),
                child: IconButton(
                  icon: const Icon(
                    Icons.energy_savings_leaf_sharp,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: '1.2',
                  style: TextStyle(
                      color: tWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'kWh',
                  style: TextStyle(
                      color: tWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '\n Today',
                  style: TextStyle(
                    color: tWhiteColor,
                    fontSize: 15,
                  ),
                ),
              ])),
              const SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: tLightGrey.withOpacity(0.2),
                child: IconButton(
                  icon: const Icon(
                    Icons.power_sharp,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: '491',
                  style: TextStyle(
                      color: tWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'kWh',
                  style: TextStyle(
                      color: tWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '\n This Month',
                  style: TextStyle(
                    color: tWhiteColor,
                    fontSize: 15,
                  ),
                ),
              ]))
            ],
          ),
        )
      ],
    ),
  );
}
