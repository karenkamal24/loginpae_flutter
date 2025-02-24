import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF75C2F6),),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 125,
              width: MediaQuery.of(context).size.width,
              color:Color(0xFF75C2F6)
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 35),
            child: Column(
              children: [
                Column(

                  children: [

                      Container(
                        padding: EdgeInsets.all(80),
                        margin: EdgeInsets.symmetric(horizontal: 21),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/assets/top_home.jpg'), // مسار الصورة
                              fit: BoxFit.cover, // تحديد كيفية تناسب الصورة داخل الـ Container
                            ),
                          ),
                          )
                    ,SizedBox(height: 15,),
                    Column(
                      children: [
                        Text(
                          "category",
                  style: TextStyle(color: Colors.black,
                 fontSize: 17,
                 fontWeight: FontWeight.bold,),
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
                          ElevatedButton(
                            onPressed: () {
                            },
                            child: Column(
                              children: [

                                Image.asset(
                                  'lib/assets/top home/medicine.png',
                                  height: 55,
                                  width: 55,
                                ),
                                SizedBox(height:1 ,),
                                Text("Medicine"),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // تحديد حجم الزوايا للمربع
                              ),
                              padding: EdgeInsets.all(20), // تحديد الهامش الداخلي للزر
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'lib/assets/top home/thermometer_6946428.png',
                                  height: 55,
                                  width: 55,
                                ),  SizedBox(height:1 ,),
                                Text("Tools"),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(20),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'lib/assets/top home/vitamin pills.png',
                                  height: 55,
                                  width: 55,
                                ),SizedBox(height:1 ,),
                                Text("vitamin"),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // تحديد حجم الزوايا للمربع
                              ),
                              padding: EdgeInsets.all(20), // تحديد الهامش الداخلي للزر
                            ),
                          ), ElevatedButton(
                            onPressed: () {
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'lib/assets/top home/Skin Care.png',
                                  height: 55,
                                  width: 55,
                                ), SizedBox(height:1 ,),
                                Text("skin care"),
                              ],
                            ),

                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // تحديد حجم الزوايا للمربع
                              ),
                              padding: EdgeInsets.all(20), // تحديد الهامش الداخلي للزر
                            ),
                          ),






                        ],)


                      ],)

                  ],
                ),

              ],
            ),

          ),

        ], // Stack Children
      ),
    );
  }
}



class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width /2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
