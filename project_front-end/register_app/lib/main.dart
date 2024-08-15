import 'package:flutter/material.dart';
import 'package:register_app/views/background/background_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Email Registration',
      home: EmailRegistrationScreen(),
    );
  }
}

class EmailRegistrationScreen extends StatefulWidget {
  const EmailRegistrationScreen({super.key});

  @override
  _EmailRegistrationScreenState createState() =>
      _EmailRegistrationScreenState();
}

class _EmailRegistrationScreenState extends State<EmailRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return const BackgroundScreen(
      contentType: 1,
    );
  }
}
