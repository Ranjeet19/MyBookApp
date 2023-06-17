import 'package:bookapp/view/detailpage.dart';
import 'package:bookapp/view/slider.dart';
// import 'package:bookapp/view/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

// import '../categories.dart';
import '../model/book.dart';
import 'drawer.dart';
// import 'drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Draw(),

        // App Bar Start from here////
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: Icon(CupertinoIcons.arrow_right_arrow_left_circle, color: Colors.white60,));
            },
          ),
          foregroundColor: Colors.black87,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(
              left: 0,
            ),
            child: Text(
              "Hi, Ranjeet!",
              style: TextStyle(
                color: Colors.white70,
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
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.search,
                        color: Colors.white70,
                      )),
                  // IconButton(icon: ),
                  SizedBox(
                    width: 1,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.bell,
                        color: Colors.white70,
                      )),
                ],
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              
              height: 196.7,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.cyan,
              ),
              child: Image_Slider(),
              // child: Image.asset(
              //   "assets/a.png",
              //   fit: BoxFit.fill,
              // ),
            ),

            SizedBox(
              height: 15,
            ),

            //  This Container is for above list view,
            Container(
                height: 250,
                width: double.infinity,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      final book = books[index];
                      return InkWell(
                        onTap: () {
                          Get.to(() => Detail_Page(book));
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
                                      width: 370,
                                      child: Row(
                                        children: [
                                          Expanded(child: Container()),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 7),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    book.label,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 17),
                                                  ),
                                                  Text(
                                                    book.detail,
                                                    style: TextStyle(
                                                        color: Colors.blueGrey),
                                                    maxLines: 4,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(book.rating),
                                                      SizedBox(
                                                        height: 2,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 4),
                                                        child: Text(
                                                          "-" + book.genre,
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black54,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800),
                                                        ),
                                                      ),
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
                                    child: Image.network(
                                      book.image,
                                      height: 250,
                                      width: 125,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      );
                    })),

            // SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "You May Also Like...",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),

            // SizedBox(height: 10,),

            Container(
              height: 226,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    final book = books[index];

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          // margin: EdgeInsets.only(right: 5),
                          height: 220,
                          width: 120,
                          color: Color.fromARGB(255, 172, 217, 194),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 130,
                                width: double.infinity,
                                color: Colors.red,
                                child: PhotoView(
                                  imageProvider: NetworkImage(book.image),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      book.label,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      book.genre,
                                      style: TextStyle(
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14),
                                    ),
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
              child: Text(
                "Top Rated..",
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),

            Container(
              height: 230,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: books.length,
                  itemBuilder: (context, index) {
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
                                child: Image.network(
                                  book.image,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      book.label,
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      book.genre,
                                      style: TextStyle(
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14),
                                    ),
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
        ));
  }
}
