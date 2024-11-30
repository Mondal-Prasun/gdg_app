import 'package:flutter_riverpod/flutter_riverpod.dart';

List<Map<String, String>> dummyQuestion = [
  {
    "question": "What is Google Developers Group (GDG)?",
    "answer":
        "Google Developers Group (GDG) is a community of developers who are passionate about Google's developer technology. It provides a platform for networking, learning, and collaboration through events, workshops, and meetups."
  },
  {
    "question": "How can I join a GDG chapter?",
    "answer":
        "You can join a GDG chapter by visiting the official GDG website or Meetup.com, searching for a chapter near you, and signing up to attend their events."
  },
  {
    "question": "Do I need to be a professional developer to join GDG?",
    "answer":
        "No, GDG welcomes developers of all skill levels, including beginners, students, and professionals. It is a great platform to learn and grow regardless of your experience."
  },
  {
    "question": "Are GDG events free to attend?",
    "answer":
        "Most GDG events are free to attend, though some special workshops or conferences may require a nominal fee to cover expenses."
  },
  {
    "question": "What kind of activities can I expect at GDG events?",
    "answer":
        "GDG events often include tech talks, hands-on coding workshops, hackathons, networking opportunities, and sessions on Google's latest technologies like Android, Firebase, and Google Cloud."
  },
  {
    "question": "How can I become a GDG organizer?",
    "answer":
        "To become a GDG organizer, you can reach out to an existing GDG chapter or apply through the GDG official website. Demonstrating enthusiasm for tech and community building is key."
  },
  {
    "question":
        "What is the difference between GDG and other developer communities?",
    "answer":
        "While many developer communities focus on general programming topics, GDG specializes in Google technologies and tools, providing unique resources and opportunities to connect with Google experts."
  },
  {
    "question": "Can I start a new GDG chapter in my area?",
    "answer":
        "Yes, you can apply to start a new GDG chapter if there isn't one in your area. You will need to meet the criteria set by Google and submit an application through the GDG website."
  }
];

class _SearchFaqQuestionProvider extends StateNotifier<List> {
  _SearchFaqQuestionProvider() : super([]);

  List<Map<String, String>> getAllQuesttion() {
    ///Change this list strcuture as per the object that will return from http api..
    ///
    ///
    ///
    ///Implement https api request
    ///
    ///
    // return state;
    return dummyQuestion;
  }

  List<Map<String, String>> getSearchedQuestion(String char) {
    ///Change this list strcuture as per the object that will return from http api..
    ///
    ///
    ///
    final List<Map<String, String>> searchedQuestion = dummyQuestion.where(
      (element) {
        return element["question"]!.contains(char);
      },
    ).toList();

    if (searchedQuestion.isEmpty) {
      return dummyQuestion;
    } else {
      return searchedQuestion;
    }
  }
}

final questionProvider =
    StateNotifierProvider<_SearchFaqQuestionProvider, List>(
  (ref) {
    return _SearchFaqQuestionProvider();
  },
);
