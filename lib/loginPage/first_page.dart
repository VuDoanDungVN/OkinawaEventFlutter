import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/loginPage/login_page.dart';
import 'package:flutter_lesson_1/loginPage/register_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/image/bg.png"),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 500),
                const Text(
                  "Welcome to Okinawa",
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      height: 1),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Engage your audience with language that's simple & easy to understand",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround, // Căn giữa Row
                  children: [
                    // ElevatedButton thứ nhất
                    SizedBox(
                      width: 160, // Chiều rộng của button
                      height: 40, // Chiều cao của button
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            //  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10), // chỉnh padding
                            backgroundColor: Colors.blue, // Màu nền button
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white), // chỉnh font chữ
                        ),
                      ),
                    ),
                    const SizedBox(
                        width: 20), // Tạo khoảng cách giữa các button
                    // ElevatedButton thứ hai
                    SizedBox(
                      width: 160, // Chiều rộng của button
                      height: 40, // Chiều cao của button
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            //  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10), // chỉnh padding
                            backgroundColor:
                                Color(0xFFE8E8E8), // Màu nền button
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))
                            // Màu chữ
                            ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF005270)), // chỉnh font chữ
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
