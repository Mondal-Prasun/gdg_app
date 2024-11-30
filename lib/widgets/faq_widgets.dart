import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FaqWidgets extends StatefulWidget {
  const FaqWidgets({super.key, required this.question, required this.answer});
  final String question;
  final String answer;

  @override
  State<StatefulWidget> createState() {
    return _FaqWidgetsState();
  }
}

class _FaqWidgetsState extends State<FaqWidgets> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            isOpened = !isOpened;
          });
        },

        ///No need of animated container
        ///
        ///
        ///
        child: Container(
          padding: const EdgeInsets.all(18),
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(24, 175, 112, 177),
            border: Border.all(
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      widget.question,
                      style: GoogleFonts.lato(
                          // fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          textStyle: const TextStyle(fontSize: 17)),
                    ),
                  ),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
              Visibility(
                visible: isOpened,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Ans: ${widget.answer}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
