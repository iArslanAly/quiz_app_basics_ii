import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('The Questions......'),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
        ],
      ),
    );
  }
}
