import 'package:bookapp/view/detailpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../categories.dart';
import '../model/book.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black87,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Hi, John!",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.search)),
                  // IconButton(icon: ),
                  SizedBox(
                    width: 1,
                  ),
                  // IconButton(onPressed: (onPressed), icon: icon),
                                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell)),

                ],
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
              color: Colors.cyan,
 
              ),

              child: Image.asset('assets/a.png',fit: BoxFit.fill,),
            ),
          
             SizedBox(height: 15,),


            //  This Container is for above list view
            Container(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: books.length,
                  itemBuilder: (context, index){
                  final book = books[index];
                  return InkWell(

                    onTap: (){
                      Get.to(()=>Detail_Page(book));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 5),
                        width: 370,
                        height: 250,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Card(
                                child: Container(
                                  height: 200,
                                  width:370,
                                  child: Row(
                                    children: [
                                      Expanded(child: Container()),
                                      SizedBox(width: 50,),
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 7),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(book.label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                                              Text(book.detail,
                                                style: TextStyle(color: Colors.blueGrey),
                                                maxLines: 4,overflow: TextOverflow.ellipsis,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(book.rating),
                                                  Text(book.genre),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                  
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 15,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(book.image,
                                  height: 250,
                                  width: 125,
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ],
                        )),
                  );
                  }
              )
            ),

            // SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("You May Also Like...", style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
                fontSize: 16,
            
            
              ),),
            ),

            // SizedBox(height: 10,),

              Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                
                scrollDirection: Axis.horizontal,
                itemCount: books.length,
                itemBuilder: (context, index){
                final book = books[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      // margin: EdgeInsets.only(right: 5),
                        height: 200,
                        width: 120,
                        color: Color.fromARGB(255, 172, 217, 194),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 130,
                              width: double.infinity,
                              color: Colors.red,
                              child: Image.network(book.image, fit:BoxFit.fill , ), 
                            ),
                         
                            Padding(
                              padding: const EdgeInsets.only(top:10, left: 10 ),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text("Hello World",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                              Text("Classic", style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.w300, fontSize: 14),),
                                ],
                              ),
                            )
                           
                          ],
                        ),
                    ),
                  ),
                );
              }),
            ),  
            
            
            
               Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Top Rated..", style: TextStyle(
                fontFamily: 'Ubuntu',
                color: Colors.black87,
                fontWeight: FontWeight.w600,
                fontSize: 16,
            
            
              ),),
            ),

            
            
            Container(
              height: 230,
              width: double.infinity,
              child: ListView.builder(
                
                scrollDirection: Axis.horizontal,
                itemCount: books.length,
                itemBuilder: (context, index){
                final book = books[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      // margin: EdgeInsets.only(right: 5),
                        height: 200,
                        width: 120,
                        color: Color.fromARGB(255, 172, 217, 194),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 130,
                              width: double.infinity,
                              color: Colors.red,
                              child: Image.network(book.image, fit:BoxFit.fill , ), 
                            ),
                         
                            Padding(
                              padding: const EdgeInsets.only(top:10, left: 10 ),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(book.label,style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w500,fontSize: 16),),
                              Text(book.genre, style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.w300, fontSize: 14),),
                                ],
                              ),
                            )
                           
                          ],
                        ),
                    ),
                  ),
                );
              }),
            ),
          
          ],
        )

    );
  }
}