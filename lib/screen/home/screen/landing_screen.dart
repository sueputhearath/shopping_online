import 'package:flutter/material.dart';

import '../../main_page/main_page.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                'assets/images/landing.png',
                fit: BoxFit.cover,
              ),
            ),
            IntroWidget()
          ],
        ),
      ),
    );
  }
}

class IntroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children:const [
                Expanded(
                  flex: 2,
                  child: Text('Welcome to OnlineShop',
                      style:
                          TextStyle(fontSize: 38, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const Text('We have more than 10,000+ Product available for all of you.',
                style: TextStyle(color: Colors.black, fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainPage()));
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
