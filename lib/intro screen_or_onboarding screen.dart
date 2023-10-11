import 'package:flutter/material.dart';
import 'package:flutter_application_1/gridex/gridview%202.dart';
import 'package:flutter_application_1/splash2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MaterialApp(
    home: IntroScreen(),
  ));
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.w900, fontSize: 40, color: Colors.purple),
        bodyTextStyle: GoogleFonts.abel(
            fontStyle: FontStyle.italic,
            fontSize: 20,
            color: Colors.pinkAccent),
        boxDecoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black,
          Colors.grey,
          Colors.white38,
          Colors.white
        ], begin: Alignment.bottomRight, end: Alignment.topLeft)));
    return IntroductionScreen(
      pages: [
        PageViewModel(
            decoration: pageDecoration,
            title: 'First Page',
            body:
                'Introduction screen shows the details of the app and demo of pages',
            image: IntroImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReAB_9rZt5gaaAkLJB1CECzk5Wyz9vtnmj6Q&usqp=CAU')),
        PageViewModel(
            decoration: pageDecoration,
            title: 'Second Page',
            body:
                'Introduction screen shows the details of the app and demo of pages',
            image: IntroImage(
                'data:image/jpeg;base64,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')),
        PageViewModel(
            decoration: pageDecoration,
            title: 'Third Page',
            body:
                'Introduction screen shows the details of the app and demo of pages',
            image: IntroImage(
                'data:image/jpeg;base64,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'))
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Spalsh2())),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => GridView2())),
      showSkipButton: true,
      skip: Text('Skip'),
      next: Icon(Icons.arrow_forward_rounded),
      done: Text('Done'),
      dotsDecorator: DotsDecorator(
          size: Size(10, 12),
          color: Colors.grey,
          activeSize: Size(25, 12),
          activeColor: Colors.black,
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }

  Widget IntroImage(String image) {
    return Align(
      alignment: Alignment.center,
      child: Image.network(
        image,
        width: 500,
      ),
    );
  }
}
