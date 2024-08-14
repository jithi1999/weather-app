import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:weatherdisplay/utillis/colors.dart';
import 'package:weatherdisplay/utillis/consant.dart';
import 'package:weatherdisplay/views/location_screen.dart';
import 'package:weatherdisplay/views/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(),
            kheight25,
            Container(
              width: 358,
              height: 580,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [lightBlue, darkBlue],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LocationScreen()));
                        },
                        icon: Icon(
                          Icons.add,
                          color: whiteprimary,
                          size: 32,
                        ),
                      ),
                      Text(
                        "Malang",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: whiteprimary,
                            fontSize: 16),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SettingScreen()));
                        },
                        icon: Icon(
                          Icons.settings,
                          color: whiteprimary,
                          size: 32,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset("assets/images/Sun cloud angled rain.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Sunday  |  Nov 14",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: whiteprimary),
                  ),
                ),
                Text(
                  "24",
                  style: TextStyle(
                      color: whiteprimary,
                      fontSize: 72,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Heavy rain",
                  style: TextStyle(
                      color: whiteprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w200),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Divider(
                    thickness: 1,
                    color: whiteprimary,
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        kwidth25,
                        SvgPicture.asset(
                          "assets/svgs/location.svg",
                          width: 25,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3.7 km/h",
                          style: TextStyle(fontSize: 12, color: whiteprimary),
                        ),
                        Text(
                          "Wind",
                          style: TextStyle(fontSize: 12, color: whiteprimary),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          kwidth25,
                          SvgPicture.asset(
                            "assets/svgs/rain.svg",
                            width: 25,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "74%",
                          style: TextStyle(fontSize: 12, color: whiteprimary),
                        ),
                        Text(
                          "Chance of rain",
                          style: TextStyle(fontSize: 12, color: whiteprimary),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        kwidth25,
                        SvgPicture.asset(
                          "assets/svgs/temperature.svg",
                          width: 25,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1010 mbar",
                          style: TextStyle(fontSize: 12, color: whiteprimary),
                        ),
                        Text(
                          "Pressure",
                          style: TextStyle(fontSize: 12, color: whiteprimary),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 38),
                      child: Row(
                        children: [
                          kwidth25,
                          SvgPicture.asset(
                            "assets/svgs/water.svg",
                            width: 25,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "83%",
                          style: TextStyle(fontSize: 12, color: whiteprimary),
                        ),
                        Text(
                          "Humidity 83%",
                          style: TextStyle(fontSize: 12, color: whiteprimary),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
