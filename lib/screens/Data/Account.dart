import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:carigari/Arrangements/Drawer.dart';
import 'package:carigari/Arrangements/sizeModification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carigari/Arrangements/variables.dart' as global;

import '../bottomNavigation.dart';

class AccountInfo extends StatefulWidget
{
  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  // String uid;
  
  //  @override
  //  void initState()
  //  {
  //    this.uid='';
  //   super.initState();
  //    FirebaseAuth.instance
  //       .currentUser()
  //       .then((val){
  //         setState(() {
  //          this.uid=val.uid; 
  //         });
         

  //       });
  // }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("User's Account Info"),
          backgroundColor:Colors.blue,
        ),
        bottomNavigationBar: bottomnavigation(context,1),
        drawer: theDrawer(context),
        body:
    //     FutureBuilder(
    //   future: FirebaseAuth.instance.currentUser(),
    //   builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
    //     if (snapshot.hasData) {
    //       return Text("\n   Mobile Number:  "+snapshot.data.phoneNumber,style: TextStyle(color:Colors.red,fontSize:SizeConfig.blockSizeVertical * 2.5),);
    //     }
    //     else {
    //       return Text('Loading...');
    //     }
    //   },
    // ),

    Container(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.95,
          child: Padding(
            padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Account Details',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.edit,
                        size: 26.0,
                      ),
                      tooltip: 'Edit Profile',
                      color: Colors.red,
                      onPressed: () {
                        Navigator.pushNamed(context,"ProfileEdit");
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        // SizedBox(
        //   height: MediaQuery.of(context).size.height * 0.2,
        //   width: MediaQuery.of(context).size.width * 1.0,
        //   child: Padding(
        //     padding: EdgeInsets.only(left: 25.0),
        //     child: Row(
        //       children: <Widget>[
        //         // SizedBox(
        //         //   height: 120.0,
        //         //   width: 120.0,
        //         //   child: ClipRRect(
        //         //     borderRadius: BorderRadius.circular(110.0),
        //         //     child: Image(
        //         //       image: NetworkImage(
        //         //           'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
        //         //     ),
        //         //   ),
        //         // ),
        //         // SizedBox(
        //         //   height: MediaQuery.of(context).size.height * 0.15,
        //         //   width: MediaQuery.of(context).size.width * 0.6,
        //         //   child: Column(
        //         //     mainAxisAlignment: MainAxisAlignment.center,
        //         //     crossAxisAlignment: CrossAxisAlignment.end,
        //         //     children: <Widget>[
        //         //       // Padding(
        //         //       //   padding: EdgeInsets.only(top: 5.0),
        //         //       //   child: Text(
        //         //       //     global.UserName,
        //         //       //     textAlign: TextAlign.end,
        //         //       //     style: TextStyle(
        //         //       //         fontSize: 25.0,
        //         //       //         fontFamily: 'Montserrat',
        //         //       //         fontWeight: FontWeight.w500),
        //         //       //   ),
        //         //       // ),
        //         //       // Divider(
        //         //       //   thickness: 4.0,
        //         //       //   endIndent: 4.0,
        //         //       //   color: Colors.redAccent,
        //         //       // ),
        //         //       Padding(
        //         //         padding: EdgeInsets.only(left: 15.0),
        //         //         child: Text(
        //         //         global.EmailId,
        //         //           textAlign: TextAlign.end,
        //         //           style: TextStyle(
        //         //               fontSize: 25.0,
        //         //               fontFamily: 'Montserrat',
        //         //               fontWeight: FontWeight.w400),
        //         //         ),
        //         //       ),
        //         //     ],
        //         //   ),
        //         // ),
        //       ],
        //     ),
        //   ),
        // ),
        Divider(
          thickness: 3.0,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.98,
            child: Padding(
              padding: EdgeInsets.only(left: 35.0, right: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Mobile Number',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'User Name',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Email',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                        ),
                        // Text(
                        //   'Referral Code',
                        //   textDirection: TextDirection.ltr,
                        //   style: TextStyle(
                        //       fontSize: 20.0,
                        //       fontFamily: 'Montserrat',
                        //       fontWeight: FontWeight.w500),
                        // ),
                        // Text(
                        //   'DoDo Coins',
                        //   textDirection: TextDirection.ltr,
                        //   style: TextStyle(
                        //       fontSize: 20.0,
                        //       fontFamily: 'Montserrat',
                        //       fontWeight: FontWeight.w500),
                        // ),
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          global.Phone,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          global.UserName,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400),
                        ),
                         Text(
                          global.EmailId,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400),
                        ),
                        // Row(
                        //   children: <Widget>[
                        //     SizedBox(
                        //         height: 25.0,
                        //         width: 25.0,
                        //         child: Image.asset('images/account_dodo.png')),
                        //     Padding(
                        //       padding: EdgeInsets.only(left: 30.0),
                        //       child: Text(
                        //         global.coins,
                        //         textDirection: TextDirection.ltr,
                        //         style: TextStyle(
                        //             fontSize: 20.0,
                        //             fontFamily: 'Montserrat',
                        //             fontWeight: FontWeight.w400),
                        //       ),
                        //     ),
                        //   ],
                        // )
                      ])
                ],
              ),
            )),
        Divider(
          thickness: 3.0,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.98,
          child: Padding(
            padding: EdgeInsets.only(left: 35.0, right: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Share and refer',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      'Contact Us',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.share,
                        size: 26.0,
                      ),
                      tooltip: 'Share App',
                      onPressed: () {
                        // setState(() {
                        //      });
                        //  Share.share("meet me on LinkedIN https://in.linkedin.com/in/jaya-prakash-veldanda-756b48179");
                    
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.phone,
                        size: 26.0,
                      ),
                      tooltip: 'Contact us',
                      onPressed: ()async {
                        print("clicked for call");
                        // setState(() {});
                        if (await canLaunch("tel:919010590693")) {
                       await launch("tel:919010590693");
                        }
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ))
      ),
      );
  }
}
