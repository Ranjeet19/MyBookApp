import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/book.dart';

class Detail_Page extends StatelessWidget {
  final Book book;
  Detail_Page(this.book);
  // const Detail_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // This is Back Button
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Container(
                height: 50,
                width: 50,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(CupertinoIcons.back)),
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 2),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                      const BoxShadow(
                        color: Colors.white, // color of the shadow
                        offset: Offset(-2, -2),
                        blurRadius: 15,
                        spreadRadius: 1, // how far the color effect spreads.
                      ),
                    ]
                    // when the elevation is disabled, we won't create any effect and keep the container as it is.
                    ),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  book.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      book.label,
                      
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(book.rating),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(book.genre),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 20, right: 5),
                child: Text(
                  book.detail,
                  maxLines: 7,
                  
                  overflow: TextOverflow.ellipsis,

                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Text(
                          "Read Book",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 196, 196, 196),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Text(
                          "More Info",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
