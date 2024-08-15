import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Confirm extends StatelessWidget {
  const Confirm({super.key});

  @override
  Widget build(BuildContext context) {
    final localHeight = MediaQuery.of(context).size.height;
    final localWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: localWidth * 0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle_rounded,
            size: localHeight * 0.23,
            color: Colors.white,
          ),
          const AutoSizeText(
            "Obrigado por se inscrever em nossa newsletter!",
            stepGranularity: 1,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 21,
            ),
          ),
          SizedBox(
            height: localHeight * 0.03,
          ),
          SizedBox(
            height: localHeight * 0.1,
            child: const AutoSizeText(
              "Agora você faz parte da comunidade Mindtech e está a um passo de ficar atualizado com as últimas inovações e tendências em Internet das Coisas (IoT).",
              maxLines: 5,
              textAlign: TextAlign.justify,
              minFontSize: 10,
              stepGranularity: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.4,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: localHeight * 0.02,
          ),
          Image.asset(
            "assets/images/logo-mindtech.png",
            width: localWidth * 0.12,
          )
        ],
      ),
    );
  }
}
