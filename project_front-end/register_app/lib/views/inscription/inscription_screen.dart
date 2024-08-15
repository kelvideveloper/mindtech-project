import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:register_app/views/inscription/inscription_form.dart';

class Inscription extends StatelessWidget {
  const Inscription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localHeight = MediaQuery.of(context).size.height;
    final localWidth = MediaQuery.of(context).size.width;

    // Crie um AutoSizeGroup
    final autoSizeGroup = AutoSizeGroup();

    return SizedBox(
      height: localHeight * 0.9,
      width: (localWidth - (localHeight * 0.09)) * 0.45, // 45% da largura
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Spacer(),
          const AutoSizeText(
            "Inscreva-se agora!",
            maxLines: 1,
            stepGranularity: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: localHeight * 0.03,
          ),
          SizedBox(
            height: localHeight * 0.07,
            child: AutoSizeText(
              "Preencha o formulário abaixo para"
              " se inscrever e comece a receber nossas"
              " atualizações diariamente em sua caixa de entrada.",
              maxLines: 5,
              textAlign: TextAlign.justify,
              minFontSize: 10,
              stepGranularity: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                height: 1.2,
                fontSize: 14,
                color: Colors.white,
              ),
              group: autoSizeGroup, // Adicione o grupo aqui
            ),
          ),
          SizedBox(
            height: localHeight * 0.02,
          ),
          Column(
            children: [
              SizedBox(
                height: localHeight * 0.07,
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: localHeight * 0.03,
                      color: const Color.fromRGBO(22, 92, 222, 1),
                    ),
                    Expanded(
                      child: AutoSizeText.rich(
                        const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Guias e Tutoriais',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ': Aprenda como implementar e otimizar soluções IoT para sua empresa.',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        minFontSize: 10,
                        maxLines: 4,
                        stepGranularity: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        group: autoSizeGroup, // Adicione o grupo aqui
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: localHeight * 0.07,
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: localHeight * 0.03,
                      color: const Color.fromRGBO(22, 92, 222, 1),
                    ),
                    Expanded(
                      child: AutoSizeText.rich(
                        const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Notícias e Tendências',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ': Fique por dentro das últimas novidades e avanços no mundo do IoT.',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        minFontSize: 10,
                        maxLines: 4,
                        stepGranularity: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        group: autoSizeGroup, // Adicione o grupo aqui
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: localHeight * 0.07,
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: localHeight * 0.03,
                      color: const Color.fromRGBO(22, 92, 222, 1),
                    ),
                    Expanded(
                      child: AutoSizeText.rich(
                        const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Ofertas e Promoções',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ': Receba ofertas especiais e promoções exclusivas para assinantes da nossa newsletter.',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        minFontSize: 10,
                        maxLines: 4,
                        stepGranularity: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        group: autoSizeGroup, // Adicione o grupo aqui
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: localHeight * 0.02,
          ),
          const FormItens(),
          const Spacer(),
        ],
      ),
    );
  }
}
