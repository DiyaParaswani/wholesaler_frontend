import 'package:flutter/material.dart';
import 'package:wholesaler/Wholesaler/addproduct.dart';
import 'package:wholesaler/Wholesaler/authentication_one.dart';
import 'package:wholesaler/Wholesaler/authentication_two.dart';
import 'package:wholesaler/Wholesaler/authentication_three.dart';
import 'package:wholesaler/Wholesaler/dashboard.dart';
import 'package:wholesaler/Wholesaler/myproduct.dart';
import 'package:wholesaler/Wholesaler/notification.dart';



import 'package:wholesaler/Wholesaler/addauction.dart';
import 'package:wholesaler/Wholesaler/auctioncomplete.dart';
import 'package:wholesaler/Wholesaler/bids.dart';
import 'package:wholesaler/Wholesaler/myauction.dart';
import 'package:wholesaler/Wholesaler/notifyretailer.dart';
import 'package:wholesaler/Wholesaler/order.dart';
import 'package:wholesaler/Wholesaler/orderstatus.dart';
import 'package:wholesaler/Wholesaler/payment.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Text(
          "Orders",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),

      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    //borderSide: BorderSide(color: Colors.grey), // Outline color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        color: Colors.lightGreen), // Focused outline color
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // now people column would start
            // below container is single person
            Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                color: Color.fromARGB(204, 255, 246,
                    169), // Background color of the container
                borderRadius: BorderRadius.circular(
                    10), // Border radius of the container
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // below is image
                      ClipOval(
                        child: Image.asset(
                          'assets/1.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // below is name column which consists od product name and price
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Ronald Smith",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                            Text("Potato",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                            // below row is for icon and price
                            Row(
                              children: [
                                Icon(Icons.currency_rupee,size: 13,),
                                SizedBox(width: 1,),
                                Text("600",style: TextStyle(fontSize:13,fontWeight: FontWeight.w500),),
                              ],
                            ),

                          ],
                        ),
                      ),
                      // below is button
                      Container(
                        child: Row(children: [
                          Container(),
                          Container(),
                          SizedBox(
                            // width: 50,
                            child: Positioned(
                              right: 0,
                              bottom: 0,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => Payment()),
                                  );
                                  print('Start clicked');
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // Button background color
                                  onPrimary: Colors.lightGreen, // Text color
                                  shape: RoundedRectangleBorder(
                                    // Button shape
                                    borderRadius: BorderRadius.circular(
                                        20), // Button border radius
                                    side: BorderSide(
                                        color:
                                        Colors.lightGreen), // Button border color
                                  ),
                                ),
                                child: Text('Payment'),
                              ),
                            ),
                          ),
                          // ),
                        ]),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'My Auctions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.grey,
        currentIndex: 3,
        onTap: (int index) {
          // Handle navigation to different pages based on index
        },
      ),

    );
  }
}