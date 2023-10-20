import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text( textAlign: TextAlign.justify,
              '''
              A material widget that's displayed at the bottom of an app for selecting among a small number of views, typically between three and five. The bottom navigation bar consists of multiple items in the form of text labels, icons, or both, laid out on top of a piece of material. It provides quick navigation between the top-level views of an app. For larger screens, side navigation may be a better fit.''', 
              style: TextStyle(
                fontSize: 14,
              ),
              ),
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const Text('Course Length',style: TextStyle(fontSize: 16),),
              const SizedBox(width: 5,),
              Icon(Icons.timer, size: 22,color: Colors.blue.shade600,),
              const SizedBox(width: 5,),
              const Text('26 hours',style: TextStyle(fontSize: 16),),
              const SizedBox(width: 8,),
              const Icon(Icons.star, size: 22,color: Colors.amber,),
              const Text('4.5',style: TextStyle(fontSize: 16),),
              
            ],
          ),
        ],
      ),
      );
  }
}