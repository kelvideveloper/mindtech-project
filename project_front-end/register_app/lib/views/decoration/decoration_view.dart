import 'package:flutter/material.dart';

class Forms_decoration extends StatelessWidget {
  const Forms_decoration({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          "assets/images/imagem.png",
          fit: BoxFit.contain,
        ),
        Positioned(
          bottom: screenHeight *
              0.02, // Alinha a imagem menor na parte inferior da maior
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/images/logo-mindtech.png",
              width: screenWidth * 0.12, // Define o tamanho da imagem menor
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
