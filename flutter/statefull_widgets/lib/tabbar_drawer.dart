import 'package:flutter/material.dart';

class TabBarAppBar extends StatefulWidget{
  const TabBarAppBar({super.key});

  @override
  State<TabBarAppBar> createState() => _TabBarAppBar();
}
class _TabBarAppBar extends State<TabBarAppBar>{
  @override
  Widget build(BuildContext context){
    // return DefaultTabController(
    //     length: 4,
    //     child: Scaffold(
    //       appBar: AppBar(
    //         title: Text(
    //           'Florist Shop',
    //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    //         ),
    //         backgroundColor: Colors.pinkAccent,
    //         bottom: TabBar(
    //           labelColor: Colors.pink,
    //           unselectedLabelColor: Colors.grey,
    //           indicatorColor: Colors.transparent,
    //           tabs: [
    //             Tab(icon: Icon(Icons.home), text: "Home"),
    //             Tab(icon: Icon(Icons.wallet_travel), text: "Amar Shop"),
    //             Tab(icon: Icon(Icons.qr_code_scanner), text: "QR Scan"),
    //             Tab(icon: Icon(Icons.mail_outline), text: "Inbox"),
    //           ],
    //         ),
    //       ),
    //       body: TabBarView(
    //         children: [
    //           Center(child: Text("Home Screen")),
    //           Center(child: Text("Amar Shop Screen")),
    //           Center(child: Text("QR Scan Screen")),
    //           Center(child: Text("Inbox Screen")),
    //         ],
    //       ),
    //       // bottomNavigationBar: TabBar(
    //       //   labelColor: Colors.pink,
    //       //   unselectedLabelColor: Colors.grey,
    //       //   indicatorColor: Colors.transparent,
    //       //   tabs: [
    //       //     Tab(icon: Icon(Icons.home), text: "Home"),
    //       //     Tab(icon: Icon(Icons.wallet_travel), text: "Amar Shop"),
    //       //     Tab(icon: Icon(Icons.qr_code_scanner), text: "QR Scan"),
    //       //     Tab(icon: Icon(Icons.mail_outline), text: "Inbox"),
    //       //   ],
    //       // ),
    //
    //
    //     ),
    // );
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text("Florist Shop",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.pinkAccent, // Pink Title Area
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(20), // Adds some breathing room
            children: [
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // <--- Pushes them apart
                children: [
                  Text(
                    "Florist Menu",
                    style: TextStyle(color: Colors.pink, fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  // The Language Toggle Button
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Text("Eng | বাং"),
                  ),
                ],
              ),
              const SizedBox(height: 30), // Adds some space between header and list

              ListTile(
                leading: const Icon(Icons.home_outlined, color: Colors.black87,size: 35,),
                title: const Text("Home",style: TextStyle(fontSize: 20)),
                onTap: () {
                  // We can navigate later!
                },
              ),

              ListTile(
                leading: const Icon(Icons.description_outlined, color: Colors.black87,size: 35,),
                title: const Text("Statement",style: TextStyle(fontSize: 20)),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            // 1. The TabBar (White background)
            Container(
              color: Colors.pinkAccent,
              child: Container(
                //color: Colors.white, // Sets the background to white
                decoration: BoxDecoration(
                  color: Colors.white, // Sets the background to white
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                ),
                child: const TabBar(
                  labelColor: Colors.pink, // Selected icon color
                  unselectedLabelColor: Colors.grey, // Unselected icon color
                  indicatorColor: Colors.transparent, // Underline color
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(icon: Icon(Icons.home), text: "Home"),
                    Tab(icon: Icon(Icons.shopping_bag), text: "Amar Shop"),
                    Tab(icon: Icon(Icons.qr_code_scanner), text: "QR Scan"),
                    Tab(icon: Icon(Icons.mail_outline), text: "Inbox"),
                  ],
                ),
              ),
            ),

            // 2. The Content (Fills the rest of the screen)
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text("Home Screen")),
                  Center(child: Text("Amar Shop Screen")),
                  Center(child: Text("QR Scan Screen")),
                  Center(child: Text("Inbox Screen")),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}