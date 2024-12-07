import 'package:flutter/material.dart';
import 'package:gdg_app/utils/event_provider.dart';
import 'package:gdg_app/widgets/event_card_widgets.dart';

class EventsScrollWidget extends StatelessWidget {
  const EventsScrollWidget(
      {super.key, required this.events, required this.eventName});
  final List<EventDetails> events;
  final String eventName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(eventName),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See All >',
                  // style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: events.length,
            itemBuilder: (context, index) => EventCardWidgets(
              events: events,
              index: index,
            ),
          ),
        ),
      ],
    );
  }
}
