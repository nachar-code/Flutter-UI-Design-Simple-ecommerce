import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
   VideoSection({super.key});

  // static list for videos
  final List videoList =[
    'Introduction to Flutter',
    'Installing Flutter on Windows',
    'Setup Emulator on Windows',
    'Creating your first App',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index==0 ? Colors.blue.shade600 : Colors.blue.shade300,
            ),
            child: const Icon(Icons.play_arrow_rounded, color: Colors.white,size: 30,)),
            title: Text(videoList[index]),
            subtitle: const Text('20 min 30 sec'),
        );
      },);
  }
}