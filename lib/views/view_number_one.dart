import 'package:flutter/material.dart';
import 'package:recipe_1/constant/constant.dart';
import 'package:recipe_1/widgets/widgets.dart';

class FirstMenu extends StatelessWidget {
  const FirstMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          children: [
            const SizedBox(height: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Amara',
                  style: TextStyle(
                    color: Style.colorMauve,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      dayOfTheWeek(
                          day: 'Mon',
                          date: 8,
                          backgroundColor: Colors.white,
                          dayColor: Colors.grey,
                          dateColor: Colors.black),
                      dayOfTheWeek(
                          day: 'Tue',
                          date: 9,
                          backgroundColor: Colors.white,
                          dayColor: Colors.grey,
                          dateColor: Colors.black),
                      dayOfTheWeek(
                          day: 'Wed',
                          date: 10,
                          backgroundColor: Colors.white,
                          dayColor: Colors.grey,
                          dateColor: Colors.black),
                      dayOfTheWeek(
                          day: 'Thu',
                          date: 11,
                          backgroundColor: Colors.white,
                          dayColor: Colors.grey,
                          dateColor: Colors.black),
                      dayOfTheWeek(
                          day: 'Fri',
                          date: 12,
                          backgroundColor:
                              const Color.fromARGB(255, 92, 124, 227),
                          dayColor: Colors.white,
                          dateColor: Colors.white),
                      dayOfTheWeek(
                          day: 'Sat',
                          date: 13,
                          backgroundColor: Colors.white,
                          dayColor: Colors.grey,
                          dateColor: Colors.black),
                      dayOfTheWeek(
                          day: 'Sun',
                          date: 14,
                          backgroundColor: Colors.white,
                          dayColor: Colors.grey,
                          dateColor: Colors.black),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Image.asset('assets/images/work_out.jpg'),
                    ),
                    Column(
                      children: [
                        const Text(
                          'Today you run \nfor',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '5.31 km',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Color.fromARGB(255, 92, 124, 227),
                          ),
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            PopupMenuItem(
                              child: Text('Hello Mardo'),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(55),
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 255, 75, 68),
                                  Color.fromARGB(255, 255, 122, 96),
                                ],
                              ),
                            ),
                            child: const Text(
                              'Details',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Style.colorMauve,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    Icons.sports_football,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 30),
                                  Text(
                                    '3680',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'steps',
                                style: TextStyle(
                                  color: Style.colorGrey,
                                ),
                              ),
                              Text(
                                '-------------------------------',
                                style: TextStyle(
                                  color: Style.colorGrey,
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Icon(
                                    Icons.heart_broken,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Text(
                                    '98',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'bpm',
                                style: TextStyle(
                                  color: Style.colorGrey,
                                ),
                              ),
                              Text(
                                '-------------------------------',
                                style: TextStyle(
                                  color: Style.colorGrey,
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.fire_hydrant,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 50),
                                  Text(
                                    '480',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'calories',
                                style: TextStyle(
                                  color: Style.colorGrey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
