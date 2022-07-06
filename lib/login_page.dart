import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  _toggleLogin() {
    final username = _userNameController.text;
    final password = _passwordController.text;

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          color: Colors.white,
          child: Column(
            children: [
              Text('username: $username'),
              Text('password: $password'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amberAccent,
        child: Column(
          children: [
            const Text(
              'JuJiiz Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 56,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: _userNameController,
              textAlign: TextAlign.center,
              maxLines: 1,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                hintText: 'UserName',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              textAlign: TextAlign.center,
              maxLines: 1,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _toggleLogin,
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
