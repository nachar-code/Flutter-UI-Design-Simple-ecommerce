import 'package:flutter/material.dart';
import 'package:flutter_ui_design/views/description_section.dart';
import 'package:flutter_ui_design/views/video_section.dart';


class CourseScreen extends StatefulWidget{
  final String img;
   const CourseScreen(this.img, {super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {

     bool isSelected = true;
  
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.img, style: const TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1),),
        actions:  [
          Padding(padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.notifications,size: 28, color: Colors.blue.shade500,),
          ),
        ],
      ),
      body:
      
       Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: ListView(
          children: [
            //Top Image or Video start
            Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade100,
                image: DecorationImage(
                  image: AssetImage('assets/${widget.img}.png'),
                  )
              ),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,

                  ),
                  child: Icon(Icons.play_arrow, size: 32, color: Colors.blue.shade500,),
                ),
              ),
            ),
            // Top Image or vdo end here.

            const SizedBox(height: 15,),

            // Text Layer Start
            Text('${widget.img} complete course',style: const TextStyle(
              fontSize: 22,fontWeight: FontWeight.bold,

            ),),

            const SizedBox(height: 5,),

                Text('Created by Famous Developer',style: TextStyle(
              fontSize: 16,fontWeight: FontWeight.w400, color: Colors.grey.shade600,

            ),),
            const SizedBox(height: 5,),
             Text('55 videos', style: TextStyle(
              fontSize: 16,fontWeight: FontWeight.w400, color: Colors.grey.shade600,

            ),),
            //Text Layer End.
            const SizedBox(height: 10,),

            // Two Button Sections start
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Button Videos
                ElevatedButton(
                  
                  style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(0.0) ,
                    // if isVideoSelected then change color
                    backgroundColor: isSelected? MaterialStatePropertyAll<Color>(Colors.blue.shade600)
                                      :MaterialStatePropertyAll<Color>(Colors.blue.shade300),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),),
                  ),
                  onPressed: (){
                      setState(() {
                     
                     isSelected=true;

                      });
                  }, 
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Videos',style: TextStyle(
                      fontSize: 22,fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                  )),
              // Button Description
                  ElevatedButton(
                  
                  style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(0.0) ,
                    backgroundColor: isSelected ? MaterialStatePropertyAll<Color>(Colors.blue.shade300)
                    :MaterialStatePropertyAll<Color>(Colors.blue.shade600),
                                    
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),),
                  ),
                  onPressed: (){
                    setState(() {
                     
                      isSelected=false;
                    });
                  }, 
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Descriptions',style: TextStyle(
                      fontSize: 22,fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                  )),
              ],
            ),
          ),
            // Two button section end here
            const SizedBox(height: 20,),
            // if videoselction condition is true then show videosection or show description section
            
            isSelected ? VideoSection(): DescriptionSection(),
          ],
        ),
      ),
    );
  }
}