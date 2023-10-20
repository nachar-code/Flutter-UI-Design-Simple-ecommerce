import 'package:flutter/material.dart';
import 'package:flutter_ui_design/views/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.6,
              decoration: const BoxDecoration(
          color: Colors.white
          
          ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.6,
              decoration:   BoxDecoration(
              color: Colors.blue.shade600,
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(70)),
      
          ),
          child: Center(
            child: Image.asset('assets/books.png',scale: 0.8,),
          ),
            ),
          Align(
            alignment:Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.66,
              decoration: BoxDecoration(
                color: Colors.blue.shade600,
                
              ),
            ),
          ), 
                    Align(
            alignment:Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.66,
              padding:const EdgeInsets.only(top: 40,bottom: 30),
              decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                
              ),
              child:  Column(
                children:  [
                  const Text('Learning Is Everything',
                  style:  TextStyle(
                    fontSize: 25, fontWeight: FontWeight.w600,
                    letterSpacing: 1, wordSpacing: 2,
                  ),),
                  const SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      textAlign: TextAlign.center,
                    'Learn with pleasure, with experience programer. Wherever you are! ',
                            style: TextStyle(
                              
                              fontSize: 18, fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                    )),
                    const SizedBox(height: 50,),
                    ElevatedButton(
                      
                     style: ButtonStyle( 
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade500),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          
                        ),
                      ),
                    ),   
                      onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                    }, child:const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Get Started',
                      style: TextStyle(color: Colors.white,
                      fontSize: 22, fontWeight: FontWeight.bold,
                      letterSpacing: 1,),
                      ),
                    )),
                    const Spacer(),
                ],
              ),
            ),
          ),  
          ],
        ),

      ),
    );
  }
}

// https://www.youtube.com/watch?v=ucwBcTgxyME