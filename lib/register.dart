import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text(
          'Register',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold, // Làm cho chữ đậm hơn
            fontSize: 24, // Tăng kích thước chữ nếu cần
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white, // Đặt màu nền của AppBar thành trắng để chữ đen dễ nhìn
        iconTheme: const IconThemeData(color: Colors.black), // Đặt màu của các biểu tượng trong AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Image.asset(
              'assets/logo.png',
              height: 200, // Tăng kích thước của logo
            ),
            // const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.black), // Đặt màu chữ của label
              ),
              style: const TextStyle(color: Colors.black), // Đặt màu chữ của TextField
            ),
            const SizedBox(height: 20), // Thêm khoảng cách giữa các trường
            TextField(
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.black), // Đặt màu chữ của label
              ),
              obscureText: true,
              style: const TextStyle(color: Colors.black), // Đặt màu chữ của TextField
            ),
            const SizedBox(height: 20), // Thêm khoảng cách giữa các trường
            TextField(
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
                labelStyle: TextStyle(color: Colors.black), // Đặt màu chữ của label
              ),
              obscureText: true,
              style: const TextStyle(color: Colors.black), // Đặt màu chữ của TextField
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 212, 209, 209),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Điều chỉnh kích thước nút
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Register', style: TextStyle(color: Colors.black)),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Already have an account?',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 212, 209, 209),
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15), // Điều chỉnh kích thước nút
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  child: const Text('Login', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}