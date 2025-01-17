import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 250),
              Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF5F5F5F)),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  fillColor: Color(0xffFFFFFF),
                  hintText: "Email",
                  hintStyle: TextStyle(fontSize: 13, color: Color(0xFFCCCCCC)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.5,
                        color:
                            Color(0xFFCCCCCC)), // Thay đổi màu border (ngoài)
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    // Thêm enabledBorder
                    borderSide:
                        BorderSide(width: 0.7, color: Color(0xFFCCCCCC)),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //Giữ nguyên focusedBorder
                    borderSide:
                        BorderSide(width: 0.1, color: Color(0xFFA1A1A1)),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText: "Password",
                  hintStyle: TextStyle(fontSize: 13, color: Color(0xFFCCCCCC)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.5,
                        color:
                            Color(0xff2f3b35)), // Thay đổi màu border (ngoài)
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    // Thêm enabledBorder
                    borderSide:
                        BorderSide(width: 0.7, color: Color(0xFFCCCCCC)),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //Giữ nguyên focusedBorder
                    borderSide:
                        BorderSide(width: 0.1, color: Color(0xFFA1A1A1)),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("Forget password?"),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity, // Chiều rộng của button
                height: 50, // Chiều cao của button
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10), // chỉnh padding
                      backgroundColor: Color(0xFF456FE8), // Màu nền button
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))
                      // Màu chữ
                      ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFFFFFFF)), // chỉnh font chữ
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
