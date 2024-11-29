import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FaqWidgets extends StatefulWidget {
  const FaqWidgets({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FaqWidgetsState();
  }
}

class _FaqWidgetsState extends State<FaqWidgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        padding: const EdgeInsets.all(18),
        duration: const Duration(milliseconds: 500),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(24, 175, 112, 177),
          border: Border.all(
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "What is GDG on Campus?",
                  style: GoogleFonts.lato(
                    // fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    textStyle: const TextStyle(fontSize: 17)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
