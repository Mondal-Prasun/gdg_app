import 'package:flutter/material.dart';
import 'package:gdg_app/widgets/faq_widgets.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Text(
            'FREQUENTLY ASKED QUESTIONS',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              decorationThickness: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: Text(
              'Here are the answers to some most frequently asked questions.',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15),
            ),
          ),
          FaqWidgets(),
        ],
      ),
    );
  }
}
