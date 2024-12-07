import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventDetails {
  EventDetails({required this.eventImagePath, required this.name});

  final String eventImagePath;
  final String name;
}

List<EventDetails> dummyEvents = [
  ...List.generate(
    4,
    (index) {
      return EventDetails(
          eventImagePath: "lib/assets/EventImage${index + 1}.jpg",
          name: "Event$index");
    },
  ),
];

class _EventStateNotifier extends StateNotifier<List<EventDetails>> {
  _EventStateNotifier() : super([]);

  List<EventDetails> upcomingEvents() {
    ////get event api
    ///
    ///
    ///
    return dummyEvents;
  }

  List<EventDetails> ongoingEvents(){
    return dummyEvents;
  }
  List<EventDetails> pastEvents(){
    return dummyEvents;
  }
}

final eventProvider =
    StateNotifierProvider<_EventStateNotifier, List<EventDetails>>(
  (ref) {
    return _EventStateNotifier();
  },
);
