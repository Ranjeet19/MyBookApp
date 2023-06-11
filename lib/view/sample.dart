import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {


    final height = MediaQuery.of(context).size.height-kToolbarHeight;
    // final h = MediaQuery.of(context).size.height-MediaQuery.of(context).padding.top;
final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample"),
      ),
      body:Wrap(
        children: [

          Container(
            
            height: 50,
            width: 100.w,
            color: Colors.red,
            child: SingleChildScrollView(child: Text("Heloaf afjdalsdfjHeloaf afjdalsdfja fasdfljasdf asdjflas fdasdflasfd asdfjsdfaslkfdasdfjsjfdasdfjslfjdsdfnasfdnsdnfs fsaljfdsjdfs fsjflsfljafowwre oidfsa fknsdv asodflsfsodfnsadfsifdosfnlkasdflsaHeloaf afjdalsdfja fasdfljasdf asdjflas fdasdflasfd asdfjsdfaslkfdasdfjsjfdasdfjslfjdsdfnasfdnsdnfs fsaljfdsjdfs fsjflsfljafowwre oidfsa fknsdv asodflsfsodfnsadfsifdosfnlkasdflsaHeloaf afjdalsdfja fasdfljasdf asdjflas fdasdflasfd asdfjsdfaslkfdasdfjsjfdasdfjslfjdsdfnasfdnsdnfs fsaljfdsjdfs fsjflsfljafowwre oidfsa fknsdv asodflsfsodfnsadfsifdosfnlkasdflsaHeloaf afjdalsdfja fasdfljasdf asdjflas fdasdflasfd asdfjsdfaslkfdasdfjsjfdasdfjslfjdsdfnasfdnsdnfs fsaljfdsjdfs fsjflsfljafowwre oidfsa fknsdv asodflsfsodfnsadfsifdosfnlkasdflsaHeloaf afjdalsdfja fasdfljasdf asdjflas fdasdflasfd asdfjsdfaslkfdasdfjsjfdasdfjslfjdsdfnasfdnsdnfs fsaljfdsjdfs fsjflsfljafowwre oidfsa fknsdv asodflsfsodfnsadfsifdosfnlkasdflsaHeloaf afjdalsdfja fasdfljasdf asdjflas fdasdflasfd asdfjsdfaslkfdasdfjsjfdasdfjslfjdsdfnasfd",style: TextStyle(fontSize: 10.sp),)),
          ),
            Container(

            height:height* 0.25,
            width: width* 0.5,
            color: Colors.green,
            child: LayoutBuilder(
              builder: (context, s){

            return
              Row(children: [
                Container(
                  height: 100,
                  width: s.maxWidth * 0.5,
                  color: Colors.grey,
                  
                ),
              ]);},
            ),
          ),  Container(
            height: height* 0.25,
            width: 200,
            color: Colors.cyan,
          ),  Container(
            height:height* 0.25,
            width: 200,
            color: Colors.yellow,
          ),
        ],
      ) ,
    );
  }
}