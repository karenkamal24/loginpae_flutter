
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}bool? isChecked=true;

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.only (left: 15,top: 50, right: 15),
        child: ListView(
          children: [

            Text(" Creat an  " ,style: TextStyle(fontSize: 45,fontWeight: FontWeight.w500), ),

            Text(" account  " ,style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),)  ,
            SizedBox(height: 50,),
            Text("your email",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500), ),
            TextField(
              decoration: InputDecoration(border:OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                hintText: "Enter yout email",
              ),
            ), SizedBox(height: 20,),
            Text("Password",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500), ),
            TextField(decoration:
            InputDecoration(border:OutlineInputBorder(borderRadius: BorderRadius.circular(15),
            ),
              hintText: "6 character 1 Capetal letter ",

            ),

            ), SizedBox(height:20 ),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),Text("I agree with ",style: TextStyle(fontSize: 15),),Text("terms and conditions" ,style: TextStyle(color: Colors.cyan,fontSize: 15),)
              ],
            ),
            SizedBox(height: 1,),

            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(children: [
                Text("and",style: TextStyle(fontSize: 15),),Text(" privecy policy",style: TextStyle(color: Colors.cyan,fontSize: 15),)
              ],),
            ),
            SizedBox(height: 40),


            Center(
              child: ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent
                  ,foregroundColor: Colors.white,
                  padding: EdgeInsets.all(20),
                  textStyle: TextStyle(fontSize: 20),
                  minimumSize: Size(300, 30),
                ),
                child: Text('Creat account'),
                onLongPress: () {

                },
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {

                },icon: Icon(Icons.email),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white
                  ,foregroundColor: Colors.blue,
                  padding: EdgeInsets.all(20),
                  textStyle: TextStyle(fontSize: 20),
                  minimumSize: Size(300, 50),

                ),
                label:  Text('sign with google'),
                onLongPress: () {

                },
              ),
            ),
            SizedBox(height: 20,),
            Center(child: Text("have allready email")),







          ],),
      ),);
  }
}
