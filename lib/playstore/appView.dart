
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../utils/Constants/constantsForClones.dart';
import '../utils/widgets/btnForClons.dart';
import '../utils/widgets/txtForClones.dart';

class appView extends StatefulWidget {
  const appView({Key? key}) : super(key: key);

  @override
  State<appView> createState() => _appViewState();
}

class _appViewState extends State<appView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey.shade900,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey,
              )),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blueGrey.shade900,
        padding: EdgeInsets.only(left: 20),
        child: ListView(

         children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
                     height: 50,
                     width: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: Image.asset(
                         "assets/images/hilll_log.png",
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                   SizedBox(
                     width: 10,
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       txtOftravalon(
                         data: "Hill Climb Racing",
                         textStyle: Constants().boldstylewhite(20),
                       ),
                       txtOftravalon(
                         data: "Fingersoft",
                         textStyle: Constants(). Stylemediuemteal(12),
                       ),
                       txtOftravalon(
                         data: "Contains ads . in app purchases",
                         textStyle: Constants().mediumstylegrey(10),
                       ),
                     ],
                   )
                 ],
               ),
               SizedBox(
                 height: 20,
               ),
               IntrinsicHeight(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Constants().rating("4.2"),
                         txtOftravalon(
                             data: "9M reviews",
                             textStyle: Constants().Regularstylegrey(10))
                       ],
                     ),
                     VerticalDivider(
                       color: Colors.grey,
                       thickness: 1,
                     ),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(
                           Icons.download_rounded,
                           color: Colors.grey,
                           size: 16,
                         ),
                         txtOftravalon(
                             data: "    78 MB    ",
                             textStyle: Constants().Regularstylegrey(10))
                       ],
                     ),
                     VerticalDivider(
                       color: Colors.grey,
                       thickness: 1,
                     ),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         txtOftravalon(
                             data: "3+",
                             textStyle: Constants().Regularstylewhite(12)),
                         txtOftravalon(
                             data: "Rated for 3+",
                             textStyle: Constants().Regularstylegrey(10))
                       ],
                     ),
                     VerticalDivider(
                       color: Colors.grey,
                       thickness: 1,
                     ),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         txtOftravalon(
                             data: "500M+",
                             textStyle: Constants().Regularstylegrey(14)),
                         txtOftravalon(
                             data: "Downloads",
                             textStyle: Constants().Regularstylegrey(10))
                       ],
                     ),
                   ],
                 ),
               ),
               SizedBox(
                 height: 20,
               ),
               btnTravelon(function: (){},height: 40,width: 350, boxDecoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   color: Colors.teal.shade700
               ), childWid:txtOftravalon(data: "Install",textStyle: Constants().mediumstyleblack(16),)),
               SizedBox(
                 height: 20,
               ),
               SizedBox(
                 height: 160,
                 child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: 6,
                     itemBuilder: (context,int){
                       return   Container(
                         height: 150,
                         width: 250,
                         margin: EdgeInsets.only(right: 10),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(10),
                           child: Image.asset("assets/images/hc.jpg",
                             fit: BoxFit.fill,
                           ),
                         ),
                       );
                     }),
               ),
               SizedBox(
                 height: 20,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   txtOftravalon(data: "About this game", textStyle: Constants().mediumstylewhite(16)),
                   Expanded(child: SizedBox(width: 20,)),
                   Icon(Icons.arrow_forward,size: 20,color: Colors.grey,),
                   SizedBox(
                     width: 20,
                   ),
                 ],
               ),
               SizedBox(
                 height: 20,
               ),
               txtOftravalon(data: "Race uphill to win this offline physics based driving game!", textStyle: Constants().Regularstylegrey(14)),
               SizedBox(
                 width: 20,
               ),
               SizedBox(
                 height: 20,
               ),
               SizedBox(
                 height: 50,
                 child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: Constants().cntrlist.length,
                     itemBuilder: (context,index){

                       return Container(
                         height: 40,
                         width: 100,
                         margin: EdgeInsets.all(10),
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(8),
                             border: Border.all(width: 1,color: Colors.grey)

                         ),
                         child: txtOftravalon(data: Constants().cntrlist[index].toString(),textStyle: Constants().mediumstylegrey(10),),
                       );
                     }),
               ),
               SizedBox(
                 height: 20,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   txtOftravalon(data: "Data safety", textStyle: Constants().mediumstylewhite(16)),
                   Expanded(child: SizedBox(width: 20,)),
                   Icon(Icons.arrow_forward,size: 20,color: Colors.grey,),
                   SizedBox(
                     width: 20,
                   ),
                 ],
               ),
               SizedBox(
                 height: 10,
               ),
               txtOftravalon(data: "We understand that your personal information is valuable, and we are committed to doing everything we can to protect it. If you have any questions or concerns about data safety at Google Play, please contact our support team for assistance.",textStyle: Constants().Regularstylegrey(12)),
               Container(
                 height: 250,
                 width: 400,
                 margin: EdgeInsets.only(top: 20,right: 20,bottom: 20),
                 padding: EdgeInsets.all(16),
                 decoration: BoxDecoration(
                     border: Border.all(width: 1,color: Colors.grey),
                     borderRadius: BorderRadius.circular(10)
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Constants().warning(Icons.share, "No data shared with third parties"),
                    Constants().warning(Icons.cloud_upload_outlined, "This app may collect these data types"),
                    Constants().warning(Icons.lock_outline, "Data is encrypted in transit"),
                    Constants().warning(Icons.delete_outline, "You can request that data be deleted"),
                 txtOftravalon(
                   data: "See details",
                   textStyle: Constants(). Stylemediuemteal(12),),
                   ],
                 ),
               )


             ],
           ),
         ],
        ),

      ),
    );
  }
}
