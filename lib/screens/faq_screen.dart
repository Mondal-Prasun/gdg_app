import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdg_app/utils/search_faq_question_provider.dart';
import 'package:gdg_app/widgets/faq_widgets.dart';

class FAQScreen extends ConsumerStatefulWidget {
  const FAQScreen({super.key});

  @override
  ConsumerState<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends ConsumerState<FAQScreen> {
  final _searchBoxKey = GlobalKey<FormState>();

  List<Map<String, String>> allQuestions = [];

  @override
  Widget build(BuildContext context) {
    if (allQuestions.isEmpty) {
      allQuestions = ref.watch(questionProvider.notifier).getAllQuesttion();
    }

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            const Text(
              'FREQUENTLY ASKED QUESTIONS',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                decorationThickness: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Text(
                'Here are the answers to some most frequently asked questions.',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(Icons.search),
                      ),
                      Expanded(
                        child: Form(
                          key: _searchBoxKey,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search using keyword",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "You have to enter some word";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                allQuestions = ref
                                    .read(questionProvider.notifier)
                                    .getSearchedQuestion(value);
                              });
                            },
                            keyboardType: TextInputType.url,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///Also change this as per the api structure requirements
            for (final faq in allQuestions)
              FaqWidgets(question: faq["question"]!, answer: faq["answer"]!),
          ],
        ),
      ),
    );
  }
}
