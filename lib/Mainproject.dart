import 'package:flutter/material.dart';

class MainProject extends StatelessWidget {
  const MainProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Vertical view
              if (constraints.maxWidth >= 480) {
                return Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: constraints.maxHeight * 0.8,
                  width: constraints.maxWidth * 0.9,
                  color: Colors.white,
                  child: const Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        bottom: 45,
                        right: 30,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/Profile.jpg'),
                          radius: 70,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        child: Text(
                          "Hi I'm Iqbal Ramadhan Purba",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Positioned(
                        top: 60,
                        left: 30,
                        child: Row(
                          children: [
                            Icon(Icons.work_outline_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Major: Student",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 30,
                        child: Row(
                          children: [
                            Icon(Icons.phone_enabled_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Phone: +62-856-6891-6407",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 140,
                        left: 30,
                        child: Row(
                          children: [
                            Icon(Icons.email_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Email: Iqbalrama45@gmail.com",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 180,
                        left: 30,
                        child: Row(
                          children: [
                            Icon(Icons.link_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "I'm also on linkedlin",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
                // horizontal view
              } else {
                return Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  height: constraints.maxWidth * 1.3,
                  width: constraints.maxWidth * 0.9,
                  color: Colors.white,
                  child: const Stack(
                    children: [
                      Positioned(
                        top: 30,
                        right: 100,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/Profile.jpg"),
                          radius: 50,
                        ),
                      ),
                      Positioned(
                        bottom: 280,
                        left: 10,
                        child: Text(
                          "Hi i'm Iqbal Ramadhan Purba",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Positioned(
                        bottom: 230,
                        child: Row(
                          children: [
                            Icon(Icons.work_outline_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Major: Student",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 180,
                        child: Row(
                          children: [
                            Icon(Icons.phone_enabled_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Phone: +62-856-6891-6407",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 130,
                        child: Row(
                          children: [
                            Icon(Icons.email_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Email: Iqbalrama45@gmail.com",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 80,
                        child: Row(
                          children: [
                            Icon(Icons.link_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "I'm also on linkedlin",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
