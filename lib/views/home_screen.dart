
import 'package:flutter/material.dart';
import 'package:flutter_ui_design/views/course_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

// Static List of category
  final List<Color> catColor=[
  const  Color(0xffffcf2f),
  const  Color(0xff6fe08d),
  const  Color(0xff61bdfd),
  const  Color(0xffcb84f8),
  const  Color(0xff78e667),
  const  Color(0xfffc7f7f),
  ];

  final List<Icon> catIcon =[
   const Icon(Icons.category,color: Colors.white,size: 30,),
   const Icon(Icons.video_library,color: Colors.white,size: 30,),
   const Icon(Icons.assignment,color: Colors.white,size: 30,),
   const Icon(Icons.store,color: Colors.white,size: 30,),
   const Icon(Icons.play_circle_fill,color: Colors.white,size: 30,),
   const Icon(Icons.emoji_events,color: Colors.white,size: 30,),
  ];

  // we can use this courseNames list names as image name with .png/.img extension
  
  final List<String> catNames=<String>['Category', 'Classes', 'Free Courses', 'Book Store', 'Live Courses', 'Leader Board'];

// List of Courses
 final List<String> courseNames = ['Flutter', 'Python', 'React Native', 'C#']; // or imgList

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Start Top Section
          Container(
            padding: const EdgeInsets.only(top: 15,bottom: 10,left: 15,right: 15),
            decoration: BoxDecoration(
              color: Colors.blue.shade500,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.dashboard,size: 40, color: Colors.white,),
                    Icon(Icons.notifications,size: 40, color: Colors.white,),
                  ],
                ),
                const SizedBox(height: 20,),
                const Padding(
                  padding: EdgeInsets.only(left: 3,bottom: 15),
                  child: Text('Hello, Developer!',style: TextStyle(
                    fontSize: 25,fontWeight: FontWeight.w600,
                    letterSpacing: 1, wordSpacing: 2,
                    color: Colors.white,
                  ),)),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.black.withOpacity(0.6),size: 25,),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    filled: true, fillColor: Colors.white,
                    hintText: 'Search here...',
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),


                  ),
                ), 
              const  SizedBox(height: 9,) 
              ],
            ),
          ),
          // End to Section

          // start Grid or tag Section
         Padding(
          padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
          child: Column(
            children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                    ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60, width: 60,
                          decoration: BoxDecoration(
                            color: catColor[index],
                            shape: BoxShape.circle,

                          ),
                          child: Center(
                            child: catIcon[index],
                          ),
                          

                        ),
                        SizedBox(height: 10,),
                        Text(catNames[index],style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.6),
                        ),),
                      ],
                    );
                  },  
                ),      
            ],
          ),
        ),  
          //End Grid or tag section

        // Start Product/course list  
         Padding(
          padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const Text('Courses',style: TextStyle(
                    fontSize: 22,fontWeight: FontWeight.w600,
                  ),),
                  Text('See All',style: TextStyle(
                    fontSize: 22,fontWeight: FontWeight.w600,
                    color: Colors.blue.withOpacity(0.5),
                  ),),
                ],
              ),
            const SizedBox(height: 10,),  

            GridView.builder(
              itemCount: courseNames.length ,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (MediaQuery.of(context).size.height -50-25 ) /(4*250),
                mainAxisSpacing: 10,crossAxisSpacing: 10,
                ), 
              itemBuilder: (context, index) {
              return  InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => CourseScreen(courseNames[index]),// passing Course Name and image to CourseScreen page.
                  ),
                  ); 
                },
                  child:  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xfff5f3ff),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/${courseNames[index]}.png',width: 100, height: 100,),
                        SizedBox(height:10 ,),
                        Text(courseNames[index], style: TextStyle(
                          fontSize: 22,fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(0.6),
                        ),),
                        SizedBox(height: 10,),
                        Text('55 Videos',style: TextStyle(
                          fontSize: 17,fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),),
                      ],
                    ),
                  ),
                );
              },),
             const SizedBox(height: 20,),
            ],
          ),
          
          ),
        // End Product/course list
        ],
      ),
      // Bottom Navagarion Bar
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        selectedItemColor: Colors.blue.shade500,
        unselectedItemColor: Colors.blue.shade100,
        showUnselectedLabels: true,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment,),label: 'Course'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: 'WishList'),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: 'Profile'),
        ],
        ),
    );
  }
}