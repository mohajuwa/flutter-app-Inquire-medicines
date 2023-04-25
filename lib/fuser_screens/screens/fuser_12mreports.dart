// صفحة تقرير الشهور للسنة للصيدلي
//  مضافه الى صفحة التقارير تحديداً زر التقرير السنوي في القائمة

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;
import 'package:medh/fuser_screens/widgets/fuser_yreports.dart';

class Months12Reports extends StatefulWidget {
  const Months12Reports({super.key});

  @override
  State<Months12Reports> createState() => _Months12ReportsState();
}

DateTime now = DateTime.now();

class _Months12ReportsState extends State<Months12Reports> {
  String formattedDate = intl.DateFormat.MEd().format(now);

  @override
  Widget build(BuildContext context) {
    var intValue = Random().nextInt(10); // Value is >= 0 and < 10.
    intValue = Random().nextInt(100) + 50; // Value is >= 50 and < 150.
    bool shadowColor = false;
    double? scrolledUnderElevation;
    const clr = Color(0xFF58329B);

    //  هذا عشان زر الرجوع

    return WillPopScope(
      onWillPop: () {
        //trigger leaving and use own data
        Navigator.pop(context, false);
        //we need to return a future
        return Future.value(true);
      },
      child: MaterialApp(
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("ar", "YE"), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        theme: ThemeData(fontFamily: 'El_Messiri'),
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 60,
              scrolledUnderElevation: scrolledUnderElevation,
              shadowColor:
                  // ignore: dead_code
                  shadowColor ? Theme.of(context).colorScheme.shadow : clr,
              backgroundColor: Colors.white,
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 0, top: 2),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const YearlyReports(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x1F000000),
                                blurRadius: 6,
                                spreadRadius: 4,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Text(
                                    "رجوع",
                                    style: TextStyle(
                                      color: Color(0xFF58329B),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x1F000000),
                            blurRadius: 6,
                            spreadRadius: 4,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              radius: 15,
                              backgroundImage:
                                  AssetImage("assets/images/icon1.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: ListView(
              children: [
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "تقرير شهر [1]",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      // لا ئحة التقارير الشهرية
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x1F000000),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      right: 2, left: 2, top: 0.5, bottom: 3),
                                  width:
                                      MediaQuery.of(context).size.width / 1.1,
                                  child: Table(
                                    defaultColumnWidth:
                                        const FlexColumnWidth(1),
                                    border: TableBorder.all(
                                        color: const Color(0xFF58329B),
                                        style: BorderStyle.solid,
                                        width: 1.5),
                                    children: [
                                      TableRow(children: [
                                        Column(children: const [
                                          Text(
                                            'الصنف',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ]),
                                        Column(children: const [
                                          Text(
                                            'الموقع',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.blue),
                                          ),
                                        ]),
                                        Column(children: const [
                                          Text(
                                            'المورد',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.blue),
                                          ),
                                        ]),
                                        Column(children: const [
                                          Text(
                                            'الكمية',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.blue),
                                          ),
                                        ]),
                                        Column(children: const [
                                          Text(
                                            'السعر',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.blue),
                                          ),
                                        ]),
                                        Column(children: const [
                                          Text(
                                            'التاريخ',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.blue),
                                          ),
                                        ]),
                                      ]),
                                      TableRow(children: [
                                        Column(children: const [
                                          Text(
                                            'ع.م - س',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Amiri_Quran",
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                        Column(children: const [
                                          Text(
                                            'إب - السبل ',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Amiri_Quran",
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                        Column(children: const [
                                          Text(
                                            '5*',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Amiri_Quran",
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                        Column(
                                          children: const [
                                            Text(
                                              '14',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              '500*',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(children: [
                                          Text(
                                            formattedDate,
                                            style: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Amiri_Quran",
                                                color: Colors.black),
                                          ),
                                        ]),
                                      ]),
                                      TableRow(children: [
                                        Column(children: const [
                                          Text(
                                            'ع.م - س',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Amiri_Quran",
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                        Column(
                                          children: const [
                                            Text(
                                              'إب - السبل ',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              '5*',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              '89',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              '500*',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(children: [
                                          Text(
                                            formattedDate,
                                            style: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Amiri_Quran",
                                                color: Colors.black),
                                          ),
                                        ]),
                                      ]),
                                      TableRow(children: [
                                        Column(children: const [
                                          Text(
                                            'ع.م - س',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Amiri_Quran",
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                        Column(
                                          children: const [
                                            Text(
                                              'إب - السبل ',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              '5*',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              '$intValue',
                                              style: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              '500*',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              formattedDate,
                                              style: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Column(children: const [
                                          Text(
                                            'ع.م - س',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Amiri_Quran",
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                        Column(
                                          children: const [
                                            Text(
                                              'إب - السبل ',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              '5*',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              '$intValue',
                                              style: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              '500*',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(children: [
                                          Text(
                                            formattedDate,
                                            style: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Amiri_Quran",
                                                color: Colors.black),
                                          ),
                                        ]),
                                      ]),
                                      TableRow(children: [
                                        Column(children: const [
                                          Text(
                                            'ع.م - س',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Amiri_Quran",
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                        Column(
                                          children: const [
                                            Text(
                                              'إب - السبل ',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              '5*',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              '$intValue',
                                              style: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              '500*',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(children: [
                                          Text(
                                            formattedDate,
                                            style: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Amiri_Quran",
                                                color: Colors.black),
                                          ),
                                        ]),
                                      ]),
                                      TableRow(children: [
                                        Column(children: const [
                                          Text(
                                            'ع.م - س',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Amiri_Quran",
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                        Column(
                                          children: const [
                                            Text(
                                              'إب - السبل ',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              '5*',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              '$intValue',
                                              style: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              '500*',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Amiri_Quran",
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(children: [
                                          Text(
                                            formattedDate,
                                            style: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Amiri_Quran",
                                                color: Colors.black),
                                          ),
                                        ]),
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month,
                                        color: Color(0x89000000),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        formattedDate,
                                        style: const TextStyle(
                                          color: Color(0x89000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.access_time_filled,
                                        color: Color(0x89000000),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "02:58 AM",
                                        style:
                                            TextStyle(color: Color(0x89000000)),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      const Text(
                                        "توريد …",
                                        style: TextStyle(
                                          color: Color(0x89000000),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 50,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF4F6FA),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Center(
                                          child: Icon(Icons
                                              .chrome_reader_mode_outlined)),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 50,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF58329B),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.print_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
