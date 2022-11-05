import 'package:AidSavers/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(StatsScreen());
}

class StatsScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blogs (For More Information)'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/blog.jpg')
          ),
        ),
        padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ElevatedButton(onPressed: () async {
//               String url = "https://firstaidtrainingcooperative.co.uk/blog/";
//               var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
//               if(urllaunchable){
//                 await launch(url); //launch is from url_launcher package to launch URL
//               }else{
//                 print("URL can't be launched.");
//               }
//             },
//                 child: const Text('Button 1')),
//             const SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(onPressed: () async {
//               String url = "https://www.safetyfirstaid.co.uk/our-blog/";
//               var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
//               if(urllaunchable){
//                 await launch(url); //launch is from url_launcher package to launch URL
//               }else{
//                 print("URL can't be launched.");
//               }
//             },
//                 child: const Text('Button 1')),
//             const SizedBox(
//               height: 30,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height:10),
              Container(
                height:542,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RaisedButton(
                            padding: EdgeInsets.only(left:30,right: 30),
                            onPressed: () async {
                              String url = "https://www.safetyfirstaid.co.uk/our-blog/";
                              var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
                              if(urllaunchable){
                                await launch(url); //launch is from url_launcher package to launch URL
                              }else{
                                print("URL can't be launched.");
                              }
                            },
                            child:Text('Blog-1' , style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,
                            ),),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color:Palette.primaryColor,
                        ),
                      ],
                    ),
                const SizedBox(
               height: 50
                ),
                    RaisedButton(
                        padding: EdgeInsets.only(left:30,right: 30),
                        onPressed: () async {
                          String url = "https://firstaidtrainingcooperative.co.uk/blog/";
                          var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
                          if(urllaunchable){
                            await launch(url); //launch is from url_launcher package to launch URL
                          }else{
                            print("URL can't be launched.");
                          }
                        },
                        child:Text('Blog-2' , style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color:Colors.black,
                        ),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      color:Palette.primaryColor,
                    ),
                    const SizedBox(
                        height: 50
                    ),
                    RaisedButton(
                        padding: EdgeInsets.only(left:30,right: 30),
                        onPressed: () async {
                          String url = "https://firstaidforlife.org.uk/blog/";
                          var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
                          if(urllaunchable){
                            await launch(url); //launch is from url_launcher package to launch URL
                          }else{
                            print("URL can't be launched.");
                          }
                        },
                        child:Text('Blog-3' , style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color:Colors.black,
                        ),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      color:Palette.primaryColor,
                    ),
                    const SizedBox(
                        height: 50
                    ),
                    RaisedButton(
                        padding: EdgeInsets.only(left:30,right: 30),
                        onPressed: () async {
                          String url = "https://www.skillbasefirstaid.com/blog/";
                          var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
                          if(urllaunchable){
                            await launch(url); //launch is from url_launcher package to launch URL
                          }else{
                            print("URL can't be launched.");
                          }
                        },
                        child:Text('Blog-4' , style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color:Colors.black,
                        ),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      color:Palette.primaryColor,
                    ),
                    const SizedBox(
                        height: 50
                    ),
                    RaisedButton(
                        padding: EdgeInsets.only(left:30,right: 30),
                        onPressed: () async {
                          String url = "https://www.alertfirstaid.com/blog/";
                          var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
                          if(urllaunchable){
                            await launch(url); //launch is from url_launcher package to launch URL
                          }else{
                            print("URL can't be launched.");
                          }
                        },
                        child:Text('Blog-5' , style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color:Colors.black,
                        ),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      color:Palette.primaryColor,
                    ),
                  ],
                ),
              ),
            ]),

      ),
    );
  }
}