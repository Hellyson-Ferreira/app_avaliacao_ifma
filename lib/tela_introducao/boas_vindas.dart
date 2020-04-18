import 'package:app_avaliacao_ifma/homeAluno/home_aluno.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.only(top: 12),
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Avaliação docente',
          body:
              'Com esse App você avaliará seu professor, suas didáticas e outros aspectos.',
          image: Image.asset('assets/logo/logo.png', width: 350.0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Ajude a melhorar o ensino',
          body:
              'Respondendo a avaliação, você ajudará o setor de ensino a ter mais informações sobre os professores e contribuir para uma melhor aprendizagem.',
          image: Image.asset('assets/gifs/ensino.gif', width: 350.0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Anonimato total',
          body:
              'E em nenhum momento você será exposto. A avaliação é totalmente confidencial.',
          image: Image.asset('assets/logo/anonymous.png', width: 350.0),
          decoration: pageDecoration,
        ),
        // PageViewModel(
        //   title: "Fractional shares",
        //   body:
        //       "Instead of having to buy an entire share, invest any amount you want.",
        //   image: Image.asset('assets/logo/logo.png', width: 350.0),
        //   decoration: pageDecoration,
        // ),
      ],
      onDone: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeAluno())),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Pular'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Pronto', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        activeColor: Colors.green,
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
