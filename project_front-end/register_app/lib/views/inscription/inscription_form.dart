import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:register_app/views/background/background_screen.dart';

class FormItens extends StatefulWidget {
  const FormItens({super.key});

  @override
  State<FormItens> createState() => _FormItensState();
}

class _FormItensState extends State<FormItens> {
  final TextEditingController _emailController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  Future<void> _registerEmail() async {
    final String email = _emailController.text;
    final url = Uri.parse('http://127.0.0.1:8000/api/email-register');

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(
          {
            'email': email,
          },
        ),
      );

      if (response.statusCode == 201) {
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const BackgroundScreen(contentType: 2)),
        );
      } else {
        final responseData = json.decode(utf8.decode(response.bodyBytes));
        _showErrorDialog('${responseData['email']}');
      }
    } catch (e) {
      _showErrorDialog('O servidor não está disponível.');
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Erro'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _validateAndSubmit() {
    if (_emailController.text.isEmpty) {
      _showErrorDialog('Insira um email para continuar');
    } else {
      _registerEmail();
    }
  }

  @override
  Widget build(BuildContext context) {
    final localHeight = MediaQuery.of(context).size.height;
    final localWidth = MediaQuery.of(context).size.width;

    return KeyboardListener(
      focusNode: FocusNode(),
      onKeyEvent: (KeyEvent event) {
        if (event.logicalKey == LogicalKeyboardKey.enter &&
            event is KeyDownEvent) {
          _validateAndSubmit();
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Expanded(
                child: AutoSizeText(
                  "E-mail",
                  minFontSize: 8,
                  maxLines: 1,
                  stepGranularity: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: localHeight * 0.01,
          ),
          Form(
            key: _formkey,
            child: SizedBox(
              height: localHeight * 0.055,
              child: TextFormField(
                controller: _emailController,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "email@email.com",
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8)),
                  contentPadding: const EdgeInsets.only(left: 20.0),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: localHeight * 0.02,
          ),
          SizedBox(
            height: localHeight * 0.055,
            width: (localWidth - (localHeight * 0.09)) * 0.45,
            child: ElevatedButton(
              onPressed: _validateAndSubmit,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(22, 92, 222, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
              ),
              child: const AutoSizeText(
                "Inscrever-se",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
