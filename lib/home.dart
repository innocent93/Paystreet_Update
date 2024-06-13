

import 'package:flutter/material.dart';
import 'package:pay_street/utils/constant.dart';


class PayStreet extends StatefulWidget {
  const PayStreet({super.key, required this.title});


  final String title;

  @override
  State<PayStreet> createState() => _PayStreetState();
}

class _PayStreetState extends State<PayStreet> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.grey,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Paystreet Update",style: TextStyle(fontSize: Sizes.size20,color: Colors.white),),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(0),
          width: Sizes.size50,
          height: Sizes.size50,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.zero,
            color: Colors.black,

          ),
          alignment: Alignment.center,
          child: Icon(Icons.menu,size: Sizes.size14,color: Colors.white,),

        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled,color: Colors.deepPurple,),
              label: "home",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_travel_sharp,color: Colors.black12,),
              label: "wallet",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq_outlined,color: Colors.black12,),
              label: "graph",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined,color: Colors.black12,),
              label: "person",
              backgroundColor: Colors.white),
        ],
      ),
      body:  SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child:
        SafeArea(

          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // CircleAvatar(
                        //   backgroundColor: Colors.blue,
                        //
                        // ),
                        Container(
                          width: Sizes.size50,
                          height: Sizes.size50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 / 2),
                            color: Colors.grey,
                          ),
                          child: Icon(
                            Icons.woman,
                            color: Colors.orange,
                            size: Sizes.size30,
                          ),
                        ),
                        SizedBox(width: Sizes.size10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text("Hi, Esther Bukola"),
                            Text("Good Evening",style: TextStyle(fontSize: Sizes.size16,fontWeight: FontWeight.bold),),

                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: Sizes.size50,
                      height: Sizes.size50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Sizes.size50),
                        color: Colors.grey,
                      ),
                      child: Icon(
                        Icons.qr_code_2,
                        color: Colors.blue,
                        size: Sizes.size30,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Sizes.size12,),
                Container(width: double.infinity,
                  height:Sizes.size200,
                  padding: EdgeInsets.symmetric(horizontal: Sizes.size14,vertical: Sizes.size20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.size10),
                    color: Colors.black,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center  ,
                        children: [

                          Text(
                            "Current Balance",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Sizes.size14,
                            ),
                          ),
                          SizedBox(width: Sizes.size5,),
                          Icon(Icons.remove_red_eye,size: Sizes.size20,color: Colors.white,),],
                      ),
                      SizedBox(height: Sizes.size5,),
                      Text("\$7,860.00",style: TextStyle(
                          color: Colors.white,
                          fontSize: Sizes.size30,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height:Sizes.size10,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Card(
                          //   elevation: 0,
                          //   color: Colors.grey,
                          //   child: ElevatedButton.icon(onPressed:() {}, icon: Icon(Icons.download), label: Text("Fund Account"))
                          // ),
                          // SizedBox(width: 10,),
                          // Card(
                          //     elevation: 0,
                          //     color: Colors.grey,
                          //     child: ElevatedButton.icon(onPressed:() {}, icon: Icon(Icons.download), label: Text("Fund Account"))
                          // ),
                          ElevatedButton(onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(Sizes.size5),
                                ),
                              ),
                              child: Column(

                                children: [
                                   Text("Fund Account",style: TextStyle(color: Colors.white,fontSize: Sizes.size12 ),),
                                  SizedBox(height: Sizes.size5,
                                  ),
                                  const Icon(Icons.download,color: Colors.white,),
                                ],
                              )),
                          SizedBox(width: Sizes.size8,),
                          ElevatedButton(onPressed: () {},

                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(Sizes.size5),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("Internal Transfer",style: TextStyle(color: Colors.white,fontSize: Sizes.size12
                                  ),),
                                  SizedBox(height: Sizes.size5,
                                  ),
                                  const Icon(Icons.redo,color: Colors.white,),
                                ],
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Sizes.size20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Bill Payment"), Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                SizedBox(height: Sizes.size20),

                Wrap(
                  direction: Axis.horizontal,
                  spacing: 6.0,
                  children: [
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.size8),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(Sizes.size5),
                            width: Sizes.size50,
                            height:Sizes.size50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.size10),
                              color: Colors.lightGreenAccent,

                            ),
                            alignment: Alignment.center,
                            child: Icon(Icons.ssid_chart,size: Sizes.size30,color: Colors.blue,),

                          ),
                          Text("Buy Airtime",style: TextStyle(fontSize: Sizes.size12,color: Colors.black,),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.size8),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(Sizes.size5),
                            width: Sizes.size50,
                            height: Sizes.size50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.size10),
                              color: Colors.lightGreenAccent,

                            ),
                            alignment: Alignment.center,
                            child: Icon(Icons.wifi_tethering_rounded,size: Sizes.size30,color: Colors.green,),

                          ),
                          Text("Buy Data",style: TextStyle(fontSize: Sizes.size12,color: Colors.black,),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.size8),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(Sizes.size5),
                            width: Sizes.size50,
                            height: Sizes.size50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.size10),
                              color: Colors.tealAccent,

                            ),
                            alignment: Alignment.center,
                            child: Icon(Icons.computer_sharp,size: Sizes.size30,color: Colors.teal,),

                          ),
                          Text("Cable Tv",style: TextStyle(fontSize: Sizes.size12,color: Colors.black,),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.size8),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(Sizes.size5),
                            width: Sizes.size50,
                            height: Sizes.size50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pinkAccent,

                            ),
                            alignment: Alignment.center,
                            child: Icon(Icons.sunny,size: Sizes.size30,color: Colors.pink,),

                          ),
                          Text("Electricity",style: TextStyle(fontSize: Sizes.size12,color: Colors.black,),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.size12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max
                        ,
                        children: [
                          Container(
                            margin: EdgeInsets.all(Sizes.size5),
                            width: Sizes.size50,
                            height: Sizes.size50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.size10),
                              color: Colors.orange,

                            ),
                            alignment: Alignment.center,
                            child: Icon(Icons.support_agent_outlined,size: Sizes.size30,color: Colors.orangeAccent,),

                          ),
                          Text("Become \nan Agent",style: TextStyle(fontSize: Sizes.size12,color: Colors.black,),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.size8),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(Sizes.size5),
                            width: Sizes.size50,
                            height: Sizes.size50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.size10),
                              color: Colors.lightGreenAccent,

                            ),
                            alignment: Alignment.center,
                            child: Icon(Icons.wifi_tethering_rounded,size: Sizes.size30,color: Colors.green,),

                          ),
                          Text("Education \nPayment",style: TextStyle(fontSize: Sizes.size12,color: Colors.black,),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.size8),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(Sizes.size5),
                            width: Sizes.size50,
                            height: Sizes.size50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.size10),
                              color: Colors.purpleAccent,

                            ),
                            alignment: Alignment.center,
                            child: Icon(Icons.airline_seat_flat,size: Sizes.size30,color: Colors.blue,),

                          ),
                          Text("Withdraw \nFunds",style: TextStyle(fontSize: Sizes.size12,color: Colors.black,),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.size8),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(Sizes.size5),
                            width: Sizes.size50,
                            height: Sizes.size50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.size10),
                              color: Colors.lightGreenAccent,

                            ),
                            alignment: Alignment.center,
                            child: Icon(Icons.security_update_warning,size: Sizes.size30,color: Colors.green,),

                          ),
                          Text("Ask4 Pay",style: TextStyle(fontSize: Sizes.size12,color: Colors.black,),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ],
                ),


                SizedBox(height: Sizes.size20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Transaction"), Text("See All"),
                  ],
                ),
                SizedBox(height: Sizes.size20,),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: Sizes.size89,
                      // padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(bottom: Sizes.size5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Sizes.size10),
                        color: Colors.white,
                      ),
                      child:  ListTile(
                        leading: Icon(Icons.shopping_cart_checkout_outlined),
                        title: Text("Shopping",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: Sizes.size14,),),
                        subtitle: Text("12 May 2023. 09:00",style: TextStyle(color: Colors.grey),),
                        trailing: Text("-\$500.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: Sizes.size14),),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: Sizes.size89,
                      // padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(bottom: Sizes.size10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.size10),
                          color: Colors.white

                      ),
                      child:  ListTile(
                        leading: Icon(Icons.move_down),
                        title: Text("Transfer",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: Sizes.size14),),
                        subtitle: Text("10 May 2023. 10:45",style: TextStyle(color: Colors.grey),),
                        trailing: Text("+\$2,800.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: Sizes.size14),),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: Sizes.size89,
                      // padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(bottom: Sizes.size10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.size10),
                          color: Colors.white

                      ),
                      child: ListTile(
                        leading: Icon(Icons.airplane_ticket),
                        title: Text("Concert Ticket",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: Sizes.size14),),
                        subtitle: Text("9 May 2023. 19:30"),
                        trailing: Text("\$170.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: Sizes.size14),),
                      ),
                    ),
                  ],
                ),





              ],

            ),
          ),
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}