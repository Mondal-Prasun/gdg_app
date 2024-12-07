import 'package:flutter/material.dart';
import 'package:gdg_app/utils/event_provider.dart';

class EventCardWidgets extends StatelessWidget {
  const EventCardWidgets(
      {super.key, required this.events, required this.index});
  final List<EventDetails> events;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        // fit: StackFit.loose,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              fit: BoxFit.cover,
              events[index].eventImagePath,
              height: double.infinity,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
              child: const Text("Join Us"),
            ),
          )
        ],
      ),
    );
  }
}
