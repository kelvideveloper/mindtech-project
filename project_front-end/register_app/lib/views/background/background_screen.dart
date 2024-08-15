import 'package:flutter/material.dart';
import 'package:register_app/views/confirm/confirm_view.dart';
import 'package:register_app/views/decoration/decoration_view.dart';

import 'package:register_app/views/inscription/inscription_screen.dart';

class BackgroundScreen extends StatelessWidget {
  final int contentType;
  const BackgroundScreen({
    super.key,
    required this.contentType,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(9, 36, 86, 1),
        child: Padding(
          padding: EdgeInsets.all(screenHeight * 0.09),
          child: Container(
            height: screenHeight * 0.9,
            width: screenWidth - (screenHeight * 0.09),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  20), // Define o raio da borda arredondada
              gradient: const RadialGradient(
                center: Alignment.center,
                radius: 0.5,
                colors: [Colors.transparent, Color.fromRGBO(0, 0, 0, 1)],
                stops: [0.0, 1.0],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenHeight * 0.07),
              child: (contentType == 1)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ConstrainedBox(
                          constraints:
                              BoxConstraints(maxWidth: screenHeight * 0.5),
                          child: const Flexible(
                            flex: 45,
                            child: Inscription(),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.1,
                        ),
                        const Flexible(
                          flex: 55,
                          child: Forms_decoration(),
                        ),
                      ],
                    )
                  : const Confirm(),
            ),
          ),
        ),
      ),
    );
  }
}
