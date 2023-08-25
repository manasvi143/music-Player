import 'package:flutter/material.dart';
import 'package:music_player/modals/audio.dart';

class GenerList extends StatelessWidget {
  const GenerList({super.key, required this.audio});
  final Audio audio;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      splashColor: Colors.white,
      highlightColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Container(
          width: 160,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0)
                    .withOpacity(0.5), //color of shadow
                spreadRadius: 2, //spread radius
                blurRadius: 5, // blur radius
                offset: const Offset(0, 2), // changes position of shadow
                //first paramerter of offset is left-right
                //second parameter is top to down
              ),
              //you can set more BoxShadow() here
            ],
            gradient: LinearGradient(colors: [
              generColor[audio.gener]!.withOpacity(0.55),
              generColor[audio.gener]!.withOpacity(0.9)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            // color: generColor[audio.gener],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                audio.gener.name,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.white, fontSize: 23),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 95,
                width: 95,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image(
                    image: generImage[audio.gener]!.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
