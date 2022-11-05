// import 'package:AidSavers/main.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class Callscreen extends StatelessWidget {
//   const Callscreen({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         // ignore: prefer_const_constructors
//         decoration: BoxDecoration(
//         // ignore: prefer_const_constructors
//         image: DecorationImage(
//         fit: BoxFit.cover,
//         image: AssetImage('assets/images/call.png'),
//     ),
//     ),
//         )
//     );
//   }
// }
//
// // child: RaisedButton(
//       //   onPressed: _callNumber,
//       //   child: Text('Call Number'),
//
//
//
//   // _callNumber() async{
//   //   const number = '08592119XXXX'; //set the number here
//   //   bool res = await FlutterPhoneDirectCaller.callNumber(number);
//   // }
//
//   //       child: RaisedButton(
//   //         onPressed: _callNumber,
//   //         child: Text('Call Number'),
//   //       ),
//   //     ),
//   //   );
//   // }
//   // _callNumber() async{
//   //   const number = '08592119XXXX'; //set the number here
//   //   bool res = await FlutterPhoneDirectCaller.callNumber(number);
//   // }
//
//
//   //     appBar: AppBar(
//   //       title: const Text('Emergency Call'),
//   //     ),
//   //     body: Center(
//   //       child: ElevatedButton(
//   //         onPressed: (){
//   //           FlutterPhoneDirectCaller.callNumber('108');
//   //           launch('tel:+108');
//   //         },
//   //         child: Text('call'),
//   //       ),
//   //     ),
//   //   );
//
// // class Mainpage extends StatefulWidget {
// //   const Mainpage({Key key}) : super(key: key);
//
// //   @override
// //   State<Mainpage> createState() => _MainpageState();
// // }
//
// // class _MainpageState extends State<Mainpage> with SingleTickerProviderStateMixin{
//
// //   TabController controller;
//
// //   @override
// //   void initState() {
// //     super.initState();
// //     controller = new TabController(vsync: this,length: 4,initialIndex: 0);
// //   }
//
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         // title: TabBar(
// //         //   controller: controller,
// //         //   labelColor: Colors.white,
// //         //   unselectedLabelColor: Colors.white,
// //         // ),
// //       ),
// //       body: TabBarView(
// //         controller: controller,
// //         children: [
// //         ],
// //       ),
// //       );
// //   }
// // }
//
//
// class Homepage extends StatefulWidget {
//   const Homepage({Key key}) : super(key: key);
//
//   @override
//   State<Homepage> createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//
//   List names = ["Ambulance","Police","Fire","Senior Citizen Helpline","Road Accident"];
//   List designations = ["108","100","101","14567","1073"];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Emergency Call'),
//       ),
//     body: ListView.builder(
//         itemCount: 5 ,
//         shrinkWrap: true,
//         itemBuilder: (BuildContext context,int index) => Container(
//           width: MediaQuery.of(context).size.width,
//           padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
//
//           child: Card(
//             elevation: 5.0,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(0.0),
//             ),
//             child: Container(
//               width: MediaQuery.of(context).size.width,
//               padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                         width: 15,
//                         height: 15,
//                       ),
//                       SizedBox(width: 6.0),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(names[index],style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold)),
//                           Text(designations[index],style: TextStyle(color: Colors.grey)),
//                         ],
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//
//
//   }
// }
