import 'package:al_anna/MyElevatedButton.dart';
import 'package:al_anna/Screens/login.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(alignment: Alignment.topCenter, children: [
          Image.asset(
            'assets/images/20181117_1542483103-718173 1.png',
            fit: BoxFit.fill,
            height: 480,
            width: 500,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450),
            child: Positioned(
              width: 420,
              top: 450,
              child: Container(
                height: 441,
                alignment: Alignment.center,
                decoration: const ShapeDecoration(
                  color: Color(0xFFFAFAFA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 58),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        MyElevatedButton(
                          height: 53.4,
                          width: 300,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFE7A967), Color(0xFF815E3A)]),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginScreen();
                                },
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(30),
                          child: Text(
                            'الانضمام لعنة',
                            style: TextStyle(fontFamily: 'Cairo', fontSize: 14),
                          ),
                        ),
                        SizedBox(height: 25),
                        MyElevatedButton(
                          height: 53.4,
                          width: 300,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFE7A967), Color(0xFF815E3A)]),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return LoginScreen();
                              },
                            ));
                          },
                          borderRadius: BorderRadius.circular(30),
                          child: const Text(
                            'إنشاء عنة جديدة +',
                            style: TextStyle(fontFamily: 'Cairo', fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Image.asset(
                          'assets/images/2222.jpg',
                          fit: BoxFit.fill,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
