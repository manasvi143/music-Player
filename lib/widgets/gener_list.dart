import 'package:flutter/material.dart';
import 'package:music_player/data/saved_audios.dart';

import 'package:music_player/widgets/gener_card.dart';

class GenerListss extends StatefulWidget {
  const GenerListss({
    super.key,
  });

  @override
  State<GenerListss> createState() {
    return _GenerListssState();
  }
}

class _GenerListssState extends State<GenerListss> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: savedAudio.length,
        itemBuilder: (context, index) => GenerList(
          audio: savedAudio[index],
        ),
      ),
    );
  }
}
