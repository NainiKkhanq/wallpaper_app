import 'package:flutter/material.dart';


class ringtoneButton extends StatelessWidget {
  String title;
  Color buttonColor;
   ringtoneButton({super.key, required this.title,required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20),
    height: 120,
    width: 200,
    decoration: BoxDecoration(
    color:buttonColor,
    borderRadius: BorderRadius.circular(20)

    ),
    child:Container(
    margin: const EdgeInsets.symmetric(horizontal: 1),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    const Icon(Icons.play_circle,color: Colors.white,),
    const SizedBox(height: 10,),
    Text("$title",style: const TextStyle(color: Colors.white),)
    ],
    ),
    ));
  }
}
