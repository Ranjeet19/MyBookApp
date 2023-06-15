import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {
//  kToolbar height for neglecting app bar height// 
    final height = MediaQuery.of(context).size.height - kToolbarHeight -MediaQuery.of(context).padding.top;
    
    final width = MediaQuery.of(context).size.width;

    print(height);
    print(width);
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample"),
      ),
      body: Column(
        children: [
          Container(
            height: height*0.25,
            width: width*0.25,
            color: Colors.green,
            child: LayoutBuilder(
              builder: (context, s){
                  return Column(children: [
                Container(
                  color: Colors.black,
                  height: s.maxHeight*0.5,
                  width: s.maxWidth*0.30,
                )
              ]);
              },
              
            
            ),
          ),

               Container(
            height: height* 0.25,
            width: double.infinity,
            color: Colors.red,
            child: Row(children: [
              Expanded(
                flex: 1,
                child: Container(
                  
                  height: 100,
                  width: 100,
                  color: Colors.brown,
                ),
              ),

                Expanded(

                  child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.cyan,
                              ),
                ),
            ]),
          ),     Container(
            height: height*0.25,
            width: 200,
            color: Colors.yellow,
          ),     Container(
            height: height*0.25,
            width: 200,
            color: Colors.blue,
          ),
          
        ],
      ),
    );
  }
}