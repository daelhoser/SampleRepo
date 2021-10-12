import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.orange,
      ),
      home: const Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.lightBlue,
                  size: 120,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Login'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.teal,
                    onSurface: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Register'),
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    onSurface: Colors.orange,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
