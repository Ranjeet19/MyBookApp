import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Image_Slider extends StatefulWidget {
  const Image_Slider({super.key});

  @override
  State<Image_Slider> createState() => _Image_SliderState();

}

class _Image_SliderState extends State<Image_Slider> {
  List imgList = [
    {"id":1, "image_path":'assets/slider/a.png',},
    {"id":2, "image_path":'assets/slider/six.jpg'},
    {"id":3, "image_path":'assets/slider/hp.jpg'},
    {"id":4, "image_path":'assets/slider/lisa.jpg'},
    {"id":5, "image_path":'assets/slider/sleep.jpg'},
    
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106.7,
      color: Colors.red,
      width: double.infinity,
      child: Column(
        children: [
        Stack(
          children: [
            InkWell(
              onTap:(){ 
                print(currentIndex);
                },

              child: CarouselSlider(
                items: imgList.map(
                  (item)=>Image.asset(
                    item['image_path'],
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),

                ).toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged:(index,reason){
                    setState(() {
                      currentIndex :++index ;
                    });
                  }
                ),
              ),
            ),

            // Positioned(
            //   bottom: 10,
            //   left: 0,
            //   right: 0,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: imgList.asMap().entries.map((entry){
            //       print(entry.key);

            //       return GestureDetector(
            //         onTap: (){
            //                             print(entry);

            //         },
            //         // onTap: ()=>carouselController.animateToPage(entry.key),
            //         child: Container(
            //           width:currentIndex == entry.key? 17:7 ,
            //           height: 7.0,
            //           margin: EdgeInsets.symmetric(horizontal: 3.0),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: currentIndex == entry.key? Colors.red: Colors.teal
            //           ),
            //         ),
            //       );
            //     }).toList(),
            //   ),),
          ],
        )
      ]),
    );

  }
}