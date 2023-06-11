import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:songsbyweather/pages/home_screen.dart';
import 'package:songsbyweather/shared/into_screen_preferences.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final introKey = GlobalKey<IntroductionScreenState>();

    void _onIntroEnd(context) {
      Navigator.of(context)
          .push(
            MaterialPageRoute(
              builder: (_) => HomeScreen(),
            ),
          )
          .then(
            (value) => IntroScreenPreferences().setIntroScreen(),
          );
    }

    Widget _buildFullscreenImage() {
      return Image.asset(
        'assets/introScreen/first.png',
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
      );
    }

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      onDone: () => _onIntroEnd(context),
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          child: const Text(
            'Let\'s go right away!',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Fractional shares One",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: _buildFullscreenImage(),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fractional shares Two",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: _buildFullscreenImage(),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fractional shares Three",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: _buildFullscreenImage(),
          decoration: pageDecoration,
        ),
      ],
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      back: const Icon(Icons.arrow_back),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: Colors.redAccent,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
