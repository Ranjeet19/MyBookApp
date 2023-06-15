import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  const Draw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.red,
        child: ListView(
          children: [
            DrawerHeader(

              
              decoration: BoxDecoration(
              color:Colors.blue,

              ),
              child: 
              Column(children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.back_hand)),
              ],)
              
              ),
            

            ListTile(
              
              title: Text("Favourite"),
            ),
          ],
        ),
      ),
    );
  }
}