import 'package:AidSavers/call.dart';
import 'package:AidSavers/config/palette.dart';
import 'package:AidSavers/data/data.dart';
import 'package:AidSavers/screens/asthama_det.dart';
import 'package:AidSavers/screens/bleed_det.dart';
import 'package:AidSavers/screens/bone_det.dart';
import 'package:AidSavers/screens/eye_det.dart';
import 'package:AidSavers/screens/head_det.dart';
import 'package:AidSavers/screens/heart_det.dart';
import 'package:AidSavers/screens/hypo_det.dart';
import 'package:AidSavers/screens/skin_det.dart';
import 'package:AidSavers/screens/stats_screen.dart';
import 'package:AidSavers/screens/stings.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import 'package:AidSavers/main.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          _buildHeader(screenHeight),
          _buildPreventionTips(screenHeight),
          // _buildYourOwnTest(screenHeight),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 50, 5, 25),
        // padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text('Welcome To, Go Care    ',
                style: const TextStyle(color: Colors.black,fontSize: 27,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image(
                image: AssetImage('assets/images/First_Aid_Kit_free_vector_icons_designed_by_Freepik-removebg-preview.png'),
                height: 90,
                width:78,
              ),
            ],
            ),
            SizedBox(height: screenHeight * 0.01),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Always Have Your First Aid App on Your Pocket.',
                style: const TextStyle(color: Colors.white,
                  fontSize: 17,
              ),
              ),
                SizedBox(height: screenHeight * 0.02),
                Text('Save Lives, Be a hero',
                  style: const TextStyle(color: Colors.black38,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
            )
          ],
        ),
      ),
    );
  }
  SliverToBoxAdapter _buildPreventionTips(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Home',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 30),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Detasthama()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/asthama.png',
                        width: 100,
                        height: 100,),
                      const SizedBox(height: 6),
                      Text("Asthama\n  Attack",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.w500),)
                    ],),
                ),
              ),

              SizedBox(height: screenHeight * 0.0),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Headdet()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/he.png',
                        width: 100,
                        height: 100,),
                      const SizedBox(height: 6),
                      Text("Head Injury",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.w500),)
                    ],),
                ),
              ),

            SizedBox(height: screenHeight * 0.0),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>eyedet()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/eyes.png',
                        width: 100,
                        height: 100,),
                      const SizedBox(height: 6),
                      Text("Eye Injuries",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.w500),)
                    ],),
                ),
              ),
            ],
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>bleeddet()));
                  },
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/baa.png',
                          width: 100,
                          height: 100,),
                        const SizedBox(height: 6),
                        Text("Bledding",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.w500),)
                      ],),
                  ),
                ),

                SizedBox(height: screenHeight * 0.0),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>bonedet()));
                  },
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/fracc.png',
                          width: 100,
                          height: 100,),
                        const SizedBox(height: 6),
                        Text("Bone Fracture",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.w500),)
                      ],),
                  ),
                ),

                SizedBox(height: screenHeight * 0.0),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>heartdet()));
                  },
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/heart.png',
                          width: 100,
                          height: 100,),
                        const SizedBox(height: 6),
                        Text("Heart Attack",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.w500),)
                      ],),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>stingdet()));
                  },
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/sting.png',
                          width: 100,
                          height: 100,),
                        const SizedBox(height: 6),
                        Text("Stings/bites",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.w500),)
                      ],),
                  ),
                ),

                SizedBox(height: screenHeight * 0.0),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>hypodet()));
                  },
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/hyp.png',
                          width: 100,
                          height: 100,),
                        const SizedBox(height: 6),
                        Text("Hypothermia",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.w500),)
                      ],),
                  ),
                ),

                SizedBox(height: screenHeight * 0.0),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>skindet()));
                  },
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/burnss.png',
                          width: 100,
                          height: 100,),
                        const SizedBox(height: 6),
                        Text("Skin Burns",style: TextStyle(color: Colors.black,fontSize:18,fontWeight:FontWeight.w500),)
                      ],),
                  ),
                ),
              ],
            ),

          ],
            )
    ),
    );
  }
}
