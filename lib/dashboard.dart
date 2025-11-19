import 'package:flutter/material.dart';
import 'arithmetic.dart';
import 'simpleinterest.dart';
import 'areaofcircle.dart';
import 'palindrome.dart';
import 'richtextscreen.dart';
import 'borderdesign.dart';
import 'flutterlayoutscreen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  // FIXED: Removed the extra unused parameter
  Widget button(BuildContext context, String text, Widget page) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
        },
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            button(context, 'Arithmetic', const ArithmeticScreen()),
            button(context, 'Simple Interest', const SimpleInterestScreen()),
            button(context, 'Area of Circle', const AreaCircleScreen()),
            button(context, 'Palindrome Number', const PalindromeScreen()),
            button(context, 'Rich Text Example', const RichTextScreen()),
            button(
              context,
              'Border Design Example',
              const BorderDesignScreen(),
            ),
            button(
              context,
              'Flutter Layout Screen',
              const FlutterLayoutScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
