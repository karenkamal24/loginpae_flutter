
import 'dart:math';

import 'package:flutter/material.dart';
class ClippingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Container(
        child: Stack(
          children:[Container(
              width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.blue),



          )

            ,ClipPath(
            clipper: CurvedBottomClipper(),
            child:  Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/Screenshot 2024-04-23 223642.png'), // تستبدل 'assets/image.png' بمسار الصورة الخاصة بك
                  fit: BoxFit.cover, // يمكنك تعيين تكبير الصورة لتغطية الحاوية بالكامل
                ),
              ),
            )
        
           ),
            Align(

              alignment: Alignment.bottomCenter,
              child: Container(
                  width:MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height/2.5,
                  child:Column(children: [
                    Text("A pharmacy" ,
                      style:TextStyle(color: Colors.white, fontSize: 35,fontWeight: FontWeight.w500),)
                    ,Text("For all you needs" ,
                      style:TextStyle(color: Colors.white, fontSize: 35,fontWeight: FontWeight.w500),)
                   , SizedBox(height: 5,)
                    ,Text("with  few clicks ,place your" ,
                      style:TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w300),)
                    ,Text("order and wait for it to be dilivered" ,
                      style:TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w300),),
                  SizedBox(height: 90,)
                    ,ElevatedButton(onPressed: (){},
                        child: Text("GetStart"),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white
                      ,foregroundColor: Colors.blue,
                      padding: EdgeInsets.all(20),
                      textStyle: TextStyle(fontSize: 20),
                      minimumSize: Size(300, 30),)
                    )],)),
            )


        ]),

      ),

   );

  }
}

class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    final roundingHeight = size.height * 3 / 5;


    final filledRectangle =
    Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);

    final roundingRectangle = Rect.fromLTRB(
        -140, size.height - roundingHeight * 2, size.width + 140, size.height);

    final path = Path();
    path.addRect(filledRectangle);


    path.arcTo(roundingRectangle, pi, -pi, true);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {

    return true;
  }
}