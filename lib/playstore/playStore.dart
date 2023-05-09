

import 'package:flutter/material.dart';

import '../utils/Constants/constantsForClones.dart';
import '../utils/widgets/crdForStore.dart';
import '../utils/widgets/txtForClones.dart';

class pStore extends StatefulWidget {
  const pStore({Key? key}) : super(key: key);

  @override
  State<pStore> createState() => _pStoreState();
}

class _pStoreState extends State<pStore> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blueGrey.shade700,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.videogame_asset_rounded),
              label: "Games",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps_outlined),
              label: "Apps",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined),
              label: "Offers",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: "Books",
            ),
          ]),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,

        child: ListView(
         children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               SizedBox(
                 height: 40,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   FloatingActionButton.extended(
                     onPressed: () {
                       // Perform search action
                     },
                     label: Container(
                       width: 200,
                       child: TextField(
                         controller: searchController,
                         decoration: const InputDecoration(
                           filled: true,
                           fillColor: Colors.blueGrey,
                           hintText: "Search Apps & Games",
                           border: InputBorder.none,
                         ),
                       ),
                     ),
                     backgroundColor: Colors.blueGrey,
                     icon: Icon(Icons.search),
                   ),
                   IconButton(
                       onPressed: () {},
                       icon: Icon(
                         Icons.notifications_none_sharp,
                         color: Colors.grey,
                       )),
                   CircleAvatar(
                     radius: 18,
                     backgroundColor: Colors.green,
                     child: Text(
                       "A",
                       style: TextStyle(fontSize: 30.0, color: Colors.white70),
                     ), //Text
                   ),
                 ],
               ),
               DefaultTabController(
                 length: 6,
                 child: Container(
                   height: 50,
                   color: Colors.transparent,
                   child: TabBar(isScrollable: true, tabs: [
                     txtOftravalon(
                         data: "For you",
                         textStyle: Constants().mediumstylewhite(14)),
                     txtOftravalon(
                         data: "Top charts",
                         textStyle: Constants().mediumstylewhite(14)),
                     txtOftravalon(
                         data: "Children",
                         textStyle: Constants().mediumstylewhite(14)),
                     txtOftravalon(
                         data: "Events",
                         textStyle: Constants().mediumstylewhite(14)),
                     txtOftravalon(
                         data: "Premium",
                         textStyle: Constants().mediumstylewhite(14)),
                     txtOftravalon(
                         data: "Categories",
                         textStyle: Constants().mediumstylewhite(14)),
                   ]),
                 ),
               ),
               Container(
                 height: 50,
                 padding: EdgeInsets.only(left: 20,right: 6),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     txtOftravalon(data: "Top-rated games", textStyle: Constants(). mediumstylegrey(18)),
                     Icon(Icons.arrow_forward,color: Colors.grey,)
                   ],
                 ),
               ),
               Container(
                 height: 200,
                 width: 500,
                 child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: 10,
                     itemBuilder: (context, int) {
                       return crdForStr(
                           imageone: "assets/images/hc.jpg",
                           imagetwo: "assets/images/hc.jpg",
                           txtone: "Hill Climb Racing",
                           txttwo: "Racing . Stunt driving",
                           textthree: "4.3");
                     }),
               ),

               Container(
                 height: 50,
                 padding: EdgeInsets.only(left: 20,right: 6),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     txtOftravalon(data: "Suggested For You", textStyle: Constants(). mediumstylegrey(18)),
                     Icon(Icons.arrow_forward,color: Colors.grey,)
                   ],
                 ),
               ),
               Container(
                 height: 200,
                 width: 500,
                 child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: 10,
                     itemBuilder: (context, int) {
                       return crdForStr(
                           imageone: "assets/images/hc.jpg",
                           imagetwo: "assets/images/hc.jpg",
                           txtone: "Hill Climb Racing",
                           txttwo: "Racing . Stunt driving",
                           textthree: "4.3");
                     }),
               ),

               Container(
                 height: 50,
                 padding: EdgeInsets.only(left: 20,right: 6),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     txtOftravalon(data: "Offline Games", textStyle: Constants(). mediumstylegrey(18)),
                     Icon(Icons.arrow_forward,color: Colors.grey,)
                   ],
                 ),
               ),
               Container(
                 height: 200,
                 width: 500,
                 child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: 10,
                     itemBuilder: (context, int) {
                       return crdForStr(
                           imageone: "assets/images/hc.jpg",
                           imagetwo: "assets/images/hc.jpg",
                           txtone: "Hill Climb Racing",
                           txttwo: "Racing . Stunt driving",
                           textthree: "4.3");
                     }),
               ),
             ],
           ),
         ],
        ),
      ),
    );
  }
}
