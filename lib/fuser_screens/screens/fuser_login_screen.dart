// صفحة تسجيل الدخول للصيدلي

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:medh/darkmod/theme.dart';

import '../widgets/fuser_navbar_roots.dart';
import 'fuser_signup_screen.dart';

class FuserLoginScreen extends StatefulWidget {
  const FuserLoginScreen({super.key});

  @override
  State<FuserLoginScreen> createState() => _FuserLoginScreenState();
}

class _FuserLoginScreenState extends State<FuserLoginScreen> {
  bool shadowColor = false;
  double? scrolledUnderElevation;
  final clr = const Color(0xFF58329B);
  bool passTooggle = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color(0xFF58329B),
          brightness: Brightness.dark,
          fontFamily: 'El_Messiri'),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 60,
            scrolledUnderElevation: scrolledUnderElevation,
            shadowColor:
                shadowColor ? Theme.of(context).colorScheme.shadow : clr,
            backgroundColor: colors(context).color4,
            title: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 0, top: 2),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FuserNavBarRoots(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x47000000),
                                blurRadius: 1.5,
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.switch_left_outlined,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      " شعار البرنامج -->",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Amiri_Quran",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x47000000),
                            blurRadius: 4,
                            spreadRadius: 2,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
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
          ),
          body: ListView(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  "assets/stickers/stic1.png",
                  height: 250,
                ),
              ),
              const Divider(
                thickness: 2.9,
                height: 2.0,
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("إدخل إسم المستخدم"),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  obscureText: passTooggle ? true : false,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      label: const Text("إدخل كلمة السر "),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () {
                          if (passTooggle == true) {
                            passTooggle = false;
                          } else {
                            passTooggle = true;
                          }
                          setState(() {});
                        },
                        child: passTooggle
                            ? const Icon(CupertinoIcons.eye_slash_fill)
                            : const Icon(CupertinoIcons.eye_fill),
                      )),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: colors(context).color1,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FuserNavBarRoots(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Center(
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "ليس لديك حساب؟",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FuserSignUpScreen(),
                          ));
                    },
                    child: Text(
                      "إنشاء حساب",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: colors(context).color2),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
