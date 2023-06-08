

import 'package:flutter/material.dart';

import '../model/book.dart';

class Detail_Page extends StatelessWidget {


final Book book;
Detail_Page(this.book);
  // const Detail_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Text(book.label),
      ) ,
    );
  }
}