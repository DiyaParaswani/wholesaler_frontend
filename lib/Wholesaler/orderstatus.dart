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

class OrderStatus extends StatefulWidget {
  const OrderStatus({super.key});

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  bool checkBoxValueOrderConfirmed = false;
  bool checkBoxValueOrderPrepared = false;
  bool checkBoxValueOrderOutForDelivery = false;
  bool checkBoxValueOrderDelivered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => NotifyRetailer()),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Orders()),
              );
            },
          ),
        ],
        title: Center(
            child: Text("Order Status",
                style: TextStyle(fontWeight: FontWeight.bold))),
        backgroundColor: Colors.white,

      ),

      body:Container(

        height: MediaQuery.of(context).size.height * 0.9, //50% of screen height
        width: MediaQuery.of(context).size.width * 0.9, //50% of screen width

        child: SingleChildScrollView(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 80,),
              // start order taken
              Container(

                  width: MediaQuery.of(context).size.width * 0.9, //50% of screen width

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width:0.5),
                      Container(width:60,height:60,child: Image.asset("assets/order_taken.png")),
                      // SizedBox(width:40),
                      Container(child:Center(child: Text("Order Confirmed",style: TextStyle(fontSize: 20),)),),
                      // SizedBox(width:100),
                      Container(width: 50,height: 50,child:Checkbox(
                        shape: const CircleBorder(),
                        value: checkBoxValueOrderConfirmed,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkBoxValueOrderConfirmed = newValue!;
                          });
                        },
                      ),),
                    ],
                  )
              ),
              Container(height: 80,),
              // start order prepared
              Container(

                  width: MediaQuery.of(context).size.width * 0.9, //50% of screen width

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width:0.5),
                      Container(width:60,height:60,child: Image.asset("assets/order_prepared.png")),
                      // SizedBox(width:40),
                      Container(child:Center(child: Text("Order Prepared",style: TextStyle(fontSize: 20),)),),
                      // SizedBox(width:100),
                      Container(width: 50,height: 50,child:Checkbox(
                        shape: const CircleBorder(),
                        value: checkBoxValueOrderPrepared,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkBoxValueOrderPrepared = newValue!;
                          });
                        },
                      ),),
                    ],
                  )
              ),
              Container(height: 80,),
              // start out for delivery
              Container(

                  width: MediaQuery.of(context).size.width * 0.9, //50% of screen width

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width:0.5),
                      Container(width:60,height:60,child: Image.asset("assets/out_for_delivery.jpg")),
                      // SizedBox(width:40),
                      Container(child:Center(child: Text("Out for Delivery",style: TextStyle(fontSize: 20),)),),
                      // SizedBox(width:100),
                      Container(width: 50,height: 50,child:Checkbox(
                        shape: const CircleBorder(),
                        value: checkBoxValueOrderOutForDelivery,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkBoxValueOrderOutForDelivery = newValue!;
                          });
                        },
                      ),),
                    ],
                  )
              ),
              Container(height: 80,),
              // start order delivered
              Container(

                  width: MediaQuery.of(context).size.width * 0.9, //50% of screen width

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width:0.5),
                      Container(width:80,height:80,child: Image.asset("assets/order_delivered.png")),
                      // SizedBox(width:40),
                      Container(child:Center(child: Text("Order Delivered",style: TextStyle(fontSize: 20),)),),
                      // SizedBox(width:100),
                      Container(width: 50,height: 50,child: Checkbox(
                        shape: const CircleBorder(),

                        value: checkBoxValueOrderDelivered,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkBoxValueOrderDelivered = newValue!;
                          });
                        },
                      ),),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),

    );
  }
}