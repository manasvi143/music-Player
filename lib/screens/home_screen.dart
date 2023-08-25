import 'package:flutter/material.dart';

import 'package:music_player/widgets/gener_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF2b5876), Color(0xFF4e4376)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.filter_list_rounded),
                        iconSize: 36),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none),
                        iconSize: 36),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Hello Manasvi',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white, fontSize: 28),
              ),
              Text(
                'What is your mood today?',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: const Color.fromARGB(195, 255, 255, 255),
                    fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              GenerListss(),
              const SizedBox(height: 20),
              Text('You mai like it ...'),
            ],
          ),
        ),
      ),
    );
  }
}
