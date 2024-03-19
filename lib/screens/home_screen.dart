import 'dart:ui';

import 'package:ambedkar_student_housing/services/auth.dart';
import 'package:ambedkar_student_housing/utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final AuthService _auth = AuthService();
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      //backgroundColor: const Color(0xffC4DFCB),
      // appBar: AppBar(
      //   // leading: Icon(
      //   //   Icons.menu,
      //   //   color: Theme.of(context).primaryColor,
      //   // ),
      //   title: Text(
      //     "Ambedkar Student House",
      //     style: TextStyle(
      //       color: Theme.of(context).primaryColor,
      //       fontSize: 25,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      // ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.red,
    //     title: const Text('Ambedkar Student House'),
    //     centerTitle: false,
    //     actions: [
    //       IconButton(
    //         onPressed: () async {
    //           await widget._auth.signOut();
    //         },
    //         icon: const Icon(Icons.exit_to_app),
    //       ),
    //     ],
    //   ),
    // );
  }

  Container buildMyNavBar(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      height: 90,
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.only(
            //topLeft: Radius.circular(20),
            //topRight: Radius.circular(20),
            ),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(44 * fem, 30 * fem, 48 * fem, 26 * fem),
        width: 393 * fem,
        height: 90 * fem,
        decoration: BoxDecoration(
          color: const Color(0xe5ffffff),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30 * fem),
            bottomLeft: Radius.circular(30 * fem),
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                child: SizedBox(
                  // iconhouseactiveTZv (1:274)
                  width: 25 * fem,
                  height: 34 * fem,
                  child: Image.asset(
                    'assets/images/home/icon-house-active.png',
                    width: 25 * fem,
                    height: 34 * fem,
                  ),
                ),
              ),
              SizedBox(
                width: 44 * fem,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                child: SizedBox(
                  // iconzoomAUL (1:275)
                  width: 25 * fem,
                  height: 25 * fem,
                  child: Image.asset(
                    'assets/images/home/icon-zoom.png',
                    width: 25 * fem,
                    height: 25 * fem,
                  ),
                ),
              ),
              SizedBox(
                width: 44 * fem,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                child: SizedBox(
                  // iconheartUzp (1:276)
                  width: 25 * fem,
                  height: 25 * fem,
                  child: Image.asset(
                    'assets/images/home/icon-heart.png',
                    width: 25 * fem,
                    height: 25 * fem,
                  ),
                ),
              ),
              SizedBox(
                width: 44 * fem,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                child: SizedBox(
                  // iconprofileonC (1:277)
                  width: 25 * fem,
                  height: 25 * fem,
                  child: Image.asset(
                    'assets/images/home/icon-profile.png',
                    width: 25 * fem,
                    height: 25 * fem,
                  ),
                ),
              ),
              SizedBox(
                width: 44 * fem,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    //pageIndex = 4;
                  });
                },
                child: SizedBox(
                  // iconsmenuieG (1:278)
                  width: 25 * fem,
                  height: 25 * fem,
                  child: Image.asset(
                    'assets/images/home/icons-menu.png',
                    width: 25 * fem,
                    height: 25 * fem,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        height: 1692 * fem,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(30 * fem),
        ),
        child: Stack(
          children: [_homeHeader(context), _homeBodyContent(context)],
        ),
      ),
    );
    // return Container(
    //   color: const Color(0xffC4DFCB),
    //   child: Center(
    //     child: Text(
    //       "Page Number 1",
    //       style: TextStyle(
    //         color: Colors.green[900],
    //         fontSize: 45,
    //         fontWeight: FontWeight.w500,
    //       ),
    //     ),
    //   ),
    // );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

Widget _homeHeader(BuildContext context) {
  double baseWidth = 393;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Positioned(
    left: 0 * fem,
    top: 0 * fem,
    child: SizedBox(
      width: 479 * fem,
      height: 394 * fem,
      child: Stack(
        children: [
          _headerEclipseImage(context),
          _headerSearchBox(context),
          _headerText(context),
          _headerAppBar(context)
        ],
      ),
    ),
  );
}

Widget _headerText(BuildContext context) {
  double baseWidth = 393;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Positioned(
    // titleUqi (1:149)
    left: 27 * fem,
    top: 109 * fem,
    child: Align(
      child: SizedBox(
        width: 250 * fem,
        height: 120 * fem,
        child: RichText(
          text: TextSpan(
            style: SafeGoogleFont(
              'Raleway',
              fontSize: 25 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.6 * ffem / fem,
              letterSpacing: 0.75 * fem,
              color: const Color(0xff252b5c),
            ),
            children: [
              TextSpan(
                text: 'Hey,',
                style: SafeGoogleFont(
                  'Lato',
                  fontSize: 25 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.6 * ffem / fem,
                  letterSpacing: 0.75 * fem,
                  color: const Color(0xff252b5c),
                ),
              ),
              TextSpan(
                text: ' ',
                style: SafeGoogleFont(
                  'Lato',
                  fontSize: 25 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.6 * ffem / fem,
                  letterSpacing: 0.75 * fem,
                  color: const Color(0xff252b5c),
                ),
              ),
              TextSpan(
                text: 'Siddharth!',
                style: SafeGoogleFont(
                  'Lato',
                  fontSize: 25 * ffem,
                  fontWeight: FontWeight.w800,
                  height: 1.6 * ffem / fem,
                  letterSpacing: 0.75 * fem,
                  color: const Color(0xff1e35af),
                ),
              ),
              TextSpan(
                text: ' \n',
                style: SafeGoogleFont(
                  'Lato',
                  fontSize: 25 * ffem,
                  fontWeight: FontWeight.w800,
                  height: 1.6 * ffem / fem,
                  letterSpacing: 0.75 * fem,
                  color: const Color(0xff252b5c),
                ),
              ),
              TextSpan(
                text: 'Let\'s start exploring',
                style: SafeGoogleFont(
                  'Lato',
                  fontSize: 25 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.6 * ffem / fem,
                  letterSpacing: 0.75 * fem,
                  color: const Color(0xff252b5c),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _headerEclipseImage(BuildContext context) {
  double baseWidth = 393;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Positioned(
    // ellipse1LQk (1:137)
    left: -110 * fem,
    top: -115 * fem,
    child: Align(
      child: SizedBox(
        width: 362 * fem,
        height: 356 * fem,
        child: Image.asset(
          'assets/images/home/ellipse-1.png',
          width: 362 * fem,
          height: 356 * fem,
        ),
      ),
    ),
  );
}

Widget _headerSearchBox(BuildContext context) {
  double baseWidth = 393;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Positioned(
    left: 24 * fem,
    top: 209 * fem,
    child: Container(
      padding: EdgeInsets.fromLTRB(19 * fem, 17 * fem, 20.17 * fem, 16.5 * fem),
      width: 327 * fem,
      height: 70 * fem,
      decoration: BoxDecoration(
        color: const Color(0xfff5f4f8),
        borderRadius: BorderRadius.circular(10 * fem),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // layoutEPe (1:140)
            margin:
                EdgeInsets.fromLTRB(0 * fem, 11 * fem, 53 * fem, 10.5 * fem),
            height: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // groupoLG (1:141)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 13 * fem, 1 * fem),
                  width: 14 * fem,
                  height: 14 * fem,
                  child: Image.asset(
                    'assets/images/home/group.png',
                    width: 14 * fem,
                    height: 14 * fem,
                  ),
                ),
                Text(
                  // textJnp (1:146)
                  'Search House, Apartment, etc',
                  style: SafeGoogleFont(
                    'Raleway',
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.175 * ffem / fem,
                    letterSpacing: 0.36 * fem,
                    color: const Color(0xffa1a4c1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // iconmicactivePZN (1:147)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0.5 * fem),
            width: 11.67 * fem,
            height: 16.67 * fem,
            child: Image.asset(
              'assets/images/home/icon-mic-active.png',
              width: 11.67 * fem,
              height: 16.67 * fem,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _headerAppBar(BuildContext context) {
  double baseWidth = 393;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Positioned(
    // frame7476 (1:150)
    left: 24 * fem,
    top: 24 * fem,
    child: SizedBox(
      width: 345 * fem,
      height: 50 * fem,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // buttonlocationdropdownflatN7n (1:151)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 185 * fem, 0 * fem),
            padding: EdgeInsets.fromLTRB(
                18.5 * fem, 18.75 * fem, 18.5 * fem, 18.75 * fem),
            width: 110 * fem,
            height: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffecedf3)),
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(25 * fem),
            ),
            child: SizedBox(
              // layoutRLx (I1:151;14:223)
              width: double.infinity,
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    // iconlocationxbn (I1:151;14:202)
                    width: 10 * fem,
                    height: 12.5 * fem,
                    child: Image.asset(
                      'assets/images/home/icon-location-xtk.png',
                      width: 10 * fem,
                      height: 12.5 * fem,
                    ),
                  ),
                  SizedBox(
                    width: 10.5 * fem,
                  ),
                  Text(
                    // jakartaindonesiafWC (I1:151;14:206)
                    'Ontario',
                    style: SafeGoogleFont(
                      'Raleway',
                      fontSize: 10 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.175 * ffem / fem,
                      letterSpacing: 0.3 * fem,
                      color: const Color(0xff1e288a),
                    ),
                  ),
                  SizedBox(
                    width: 10.5 * fem,
                  ),
                  SizedBox(
                    // iconchevrondownaNG (I1:151;14:211)
                    width: 5,
                    //height: 3.5*fem,
                    child: Image.asset(
                      'assets/images/home/icon-chevron-down.png',
                      width: 5,
                      //height: 3.5*fem,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            // frame6u9e (1:152)
            width: 50 * fem,
            height: double.infinity,
            child: Center(
              // buttonnotificationesv (1:153)
              child: SizedBox(
                width: 50 * fem,
                height: 50 * fem,
                child: Image.asset(
                  'assets/images/home/button-notification.png',
                  width: 50 * fem,
                  height: 50 * fem,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _homeBodyContent(BuildContext context) {
  double baseWidth = 393;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Positioned(
    left: 0 * fem,
    top: 299 * fem,
    child: SizedBox(
      width: 598 * fem,
      height: 1543 * fem,
      child: Stack(
        children: [
          Positioned(
            left: 10 * fem,
            top: 0 * fem,
            child: SizedBox(
              width: 588 * fem,
              height: 1543 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 32 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _homecategory(context),
                        SizedBox(
                          height: 32 * fem,
                        ),
                        _usersNearby(context),
                        SizedBox(
                          height: 32 * fem,
                        ),
                        _ourServices(context)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget _ourServices(BuildContext context) {
  double baseWidth = 393;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return SizedBox(
    width: 553 * fem,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            _ourServicesHeaader(context),
            _ourServiceListing(context)
          ]),
  );
}

Widget _ourServiceListing(BuildContext context){
  double baseWidth = 393;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(
                  width: double.infinity,
                  height: 156*fem,
                  child: ListView(
                    shrinkWrap: true,
            scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                          padding: EdgeInsets.fromLTRB(8*fem, 8*fem, 24*fem, 8*fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration (
                                            color: const Color(0xfff5f4f7),
                                            borderRadius: BorderRadius.circular(25*fem),
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                                padding: EdgeInsets.fromLTRB(8*fem, 8*fem, 8*fem, 8*fem),
                                                width: 126*fem,
                                                height: double.infinity,
                                                 decoration: BoxDecoration (
                                                  color: const Color(0x14884af6),
                                                  borderRadius: BorderRadius.circular(18*fem),
                                                  image: const DecorationImage (
                                                    fit: BoxFit.cover,
                                                    image: AssetImage (
                                                      'assets/images/home/shape-bg-fKJ.png',
                                                    ),
                                                  ),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // component83BA (1:211)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 72*fem),
                                                      width: 25*fem,
                                                      height: 25*fem,
                                                      child: Image.asset(
                                                        'assets/images/home/component-8.png',
                                                        width: 25*fem,
                                                        height: 25*fem,
                                                      ),
                                                    ),
                                                    ClipRect(
                                                      // buttoncategorysquaretextsmall9 (1:210)
                                                      child: BackdropFilter(
                                                        filter: ImageFilter.blur (
                                                          sigmaX: 4*fem,
                                                          sigmaY: 4*fem,
                                                        ),
                                                        child: Container(
                                                          width: 38*fem,
                                                          height: 27*fem,
                                                          decoration: BoxDecoration (
                                                            color: const Color(0xff1e288a),
                                                            borderRadius: BorderRadius.circular(8*fem),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              'Villa',
                                                              style: SafeGoogleFont (
                                                                'Raleway',
                                                                fontSize: 8*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.175*ffem/fem,
                                                                letterSpacing: 0.24*fem,
                                                                color: const Color(0xfff5f4f7),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  
                                                  ],
                                                ),
                                              ),
                                            
                                              Container(
                                                // autogroupxzcyyDE (EEer1Fic7hcodFQjuYxZCY)
                                                margin: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 13*fem),
                                                width: 94*fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // layoutVSU (1:215)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                                                      width: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            // textRb2 (1:216)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.5*fem),
                                                            constraints: BoxConstraints (
                                                              maxWidth: 94*fem,
                                                            ),
                                                            child: Text(
                                                              'Sky Dandelions\nApartment',
                                                              style: SafeGoogleFont (
                                                                'Raleway',
                                                                fontSize: 12*ffem,
                                                                fontWeight: FontWeight.w700,
                                                                height: 1.5*ffem/fem,
                                                                letterSpacing: 0.36*fem,
                                                                color: const Color(0xff252b5c),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            // layoutX8G (1:217)
                                                            margin: EdgeInsets.fromLTRB(0.75*fem, 0*fem, 0*fem, 0*fem),
                                                            width: 71.25*fem,
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(
                                                                  // layoutque (1:218)
                                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 46*fem, 8.5*fem),
                                                                  width: double.infinity,
                                                                  child: Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                      Container(
                                                                        // iconstarsmallNHJ (1:219)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.75*fem, 0*fem),
                                                                        width: 6.5*fem,
                                                                        height: 6.12*fem,
                                                                        child: Image.asset(
                                                                          'assets/images/home/icon-star-small-7a4.png',
                                                                          width: 7.5*fem,
                                                                          height: 7.12*fem,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        // textULL (1:220)
                                                                        '4.2 ',
                                                                        style: SafeGoogleFont (
                                                                          'Montserrat',
                                                                          fontSize: 8*ffem,
                                                                          fontWeight: FontWeight.w700,
                                                                          height: 1*ffem/fem,
                                                                          color: const Color(0xff53577a),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // layoutotQ (1:221)
                                                                  margin: EdgeInsets.fromLTRB(0.75*fem, 0*fem, 0*fem, 0*fem),
                                                                  width: double.infinity,
                                                                  child: Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                      Container(
                                                                        // iconlocationXpQ (1:222)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.5*fem, 1*fem),
                                                                        width: 5*fem,
                                                                        height: 6.5*fem,
                                                                        child: Image.asset(
                                                                          'assets/images/home/icon-location-mjJ.png',
                                                                          width: 6*fem,
                                                                          height: 7.5*fem,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        // textqKJ (1:223)
                                                                        'Los Angeles, US',
                                                                        style: SafeGoogleFont (
                                                                          'Raleway',
                                                                          fontSize: 8*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.175*ffem/fem,
                                                                          color: const Color(0xff53577a),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      // layoutNa8 (1:212)
                                                      width: 78*fem,
                                                      height: 20*fem,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            // textiP6 (1:213)
                                                            left: 0*fem,
                                                            top: 0*fem,
                                                            child: Align(
                                                              child: SizedBox(
                                                                width: 47*fem,
                                                                height: 20*fem,
                                                                child: Text(
                                                                  '\$ 220',
                                                                  style: SafeGoogleFont (
                                                                    'Montserrat',
                                                                    fontSize: 16*ffem,
                                                                    fontWeight: FontWeight.w600,
                                                                    height: 1.2175*ffem/fem,
                                                                    letterSpacing: 0.48*fem,
                                                                    color: const Color(0xff252b5c),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            // monthNyS (1:214)
                                                            left: 46*fem,
                                                            top: 7*fem,
                                                            child: Align(
                                                              child: SizedBox(
                                                                width: 32*fem,
                                                                height: 13*fem,
                                                                child: Text(
                                                                  '/month',
                                                                  style: SafeGoogleFont (
                                                                    'Montserrat',
                                                                    fontSize: 8*ffem,
                                                                    fontWeight: FontWeight.w500,
                                                                    height: 1.625*ffem/fem,
                                                                    letterSpacing: 0.24*fem,
                                                                    color: const Color(0xff252b5c),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            
                                            ],
                                          ),
                      ),
                      Container(
                                          // estatescardhorizontalshort2YC (1:224)
                                          padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 8*fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration (
                                            color: const Color(0xfff5f4f7),
                                            borderRadius: BorderRadius.circular(25*fem),
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // shapeL36 (1:225)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                                width: 138*fem,
                                                height: double.infinity,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      // buttonfavorite3TJ (1:228)
                                                      left: 8*fem,
                                                      top: 8*fem,
                                                      child: Align(
                                                        child: SizedBox(
                                                          width: 25*fem,
                                                          height: 25*fem,
                                                          child: Image.asset(
                                                            'assets/images/home/button-favorite-cD2.png',
                                                            width: 25*fem,
                                                            height: 25*fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      // image26w2t (1:229)
                                                      left: 8*fem,
                                                      top: 0*fem,
                                                      child: Align(
                                                        child: SizedBox(
                                                          width: 130*fem,
                                                          height: 140*fem,
                                                          child: ClipRRect(
                                                            borderRadius: BorderRadius.circular(25*fem),
                                                            child: Image.asset(
                                                              'assets/images/home/image-26.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      // vectorEGt (1:230)
                                                      left: 23.3198242188*fem,
                                                      top: 16.9781494141*fem,
                                                      child: Align(
                                                        child: SizedBox(
                                                          width: 8.36*fem,
                                                          height: 7.55*fem,
                                                          child: Image.asset(
                                                            'assets/images/home/vector.png',
                                                            width: 8.36*fem,
                                                            height: 7.55*fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      // shapeYHa (1:231)
                                                      left: 15*fem,
                                                      top: 8*fem,
                                                      child: ClipRect(
                                                        child: BackdropFilter(
                                                          filter: ImageFilter.blur (
                                                            sigmaX: 6*fem,
                                                            sigmaY: 6*fem,
                                                          ),
                                                          child: Align(
                                                            child: SizedBox(
                                                              width: 25*fem,
                                                              height: 25*fem,
                                                              child: Container(
                                                                decoration: BoxDecoration (
                                                                  borderRadius: BorderRadius.circular(12.5*fem),
                                                                  color: const Color(0xffffbd3e),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      // iconheartdK2 (1:232)
                                                      left: 23.3200073242*fem,
                                                      top: 16.9781494141*fem,
                                                      child: Align(
                                                        child: SizedBox(
                                                          width: 7.36*fem,
                                                          height: 6.55*fem,
                                                          child: Image.asset(
                                                            'assets/images/home/icon-heart-Cng.png',
                                                            width: 8.36*fem,
                                                            height: 7.55*fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      // buttoncategorysquaretextsmallX (1:233)
                                                      left: 20*fem,
                                                      top: 107*fem,
                                                      child: ClipRect(
                                                        child: BackdropFilter(
                                                          filter: ImageFilter.blur (
                                                            sigmaX: 4*fem,
                                                            sigmaY: 4*fem,
                                                          ),
                                                          child: Container(
                                                            width: 63*fem,
                                                            height: 27*fem,
                                                            decoration: BoxDecoration (
                                                              color: const Color(0xff1e288a),
                                                              borderRadius: BorderRadius.circular(8*fem),
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                'Apartment',
                                                                style: SafeGoogleFont (
                                                                  'Raleway',
                                                                  fontSize: 8*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.175*ffem/fem,
                                                                  letterSpacing: 0.24*fem,
                                                                  color: const Color(0xffffffff),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // autogroupzc92Y4c (EEerbQQNTqrgtWyWQdzC92)
                                                margin: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 13*fem),
                                                width: 160*fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // layoutrLC (1:237)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                                                      width: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            // textmi4 (1:238)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26.5*fem),
                                                            child: Text(
                                                              'Sky Dandelions\nApartment',
                                                              style: SafeGoogleFont (
                                                                'Raleway',
                                                                fontSize: 12*ffem,
                                                                fontWeight: FontWeight.w700,
                                                                height: 1.5*ffem/fem,
                                                                letterSpacing: 0.36*fem,
                                                                color: const Color(0xff252b5c),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            // layoutsWC (1:239)
                                                            margin: EdgeInsets.fromLTRB(0.75*fem, 0*fem, 0*fem, 0*fem),
                                                            width: 75.25*fem,
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(
                                                                  // layoutC2g (1:240)
                                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 52*fem, 8.5*fem),
                                                                  width: double.infinity,
                                                                  child: Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                      Container(
                                                                        // iconstarsmallvUU (1:241)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.75*fem, 0*fem),
                                                                        width: 7.5*fem,
                                                                        height: 7.12*fem,
                                                                        child: Image.asset(
                                                                          'assets/images/home/icon-star-small.png',
                                                                          width: 7.5*fem,
                                                                          height: 7.12*fem,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        // textqLY (1:242)
                                                                        '4.9',
                                                                        style: SafeGoogleFont (
                                                                          'Montserrat',
                                                                          fontSize: 8*ffem,
                                                                          fontWeight: FontWeight.w700,
                                                                          height: 1*ffem/fem,
                                                                          color: const Color(0xff53577a),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // layoutjwi (1:243)
                                                                  margin: EdgeInsets.fromLTRB(0.75*fem, 0*fem, 0*fem, 0*fem),
                                                                  width: double.infinity,
                                                                  child: Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                      Container(
                                                                        // iconlocationg6G (1:244)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.5*fem, 1*fem),
                                                                        width: 6*fem,
                                                                        height: 7.5*fem,
                                                                        child: Image.asset(
                                                                          'assets/images/home/icon-location-ycx.png',
                                                                          width: 6*fem,
                                                                          height: 7.5*fem,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        // textzMr (1:245)
                                                                        'South Dakota, US',
                                                                        style: SafeGoogleFont (
                                                                          'Raleway',
                                                                          fontSize: 8*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.175*ffem/fem,
                                                                          color: const Color(0xff53577a),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // layoutXcg (1:234)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 81*fem, 0*fem),
                                                      width: double.infinity,
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.end,
                                                        children: [
                                                          Text(
                                                            // G4U (1:235)
                                                            '\$ 290',
                                                            style: SafeGoogleFont (
                                                              'Montserrat',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w600,
                                                              height: 1.2175*ffem/fem,
                                                              letterSpacing: 0.48*fem,
                                                              color: const Color(0xff252b5c),
                                                            ),
                                                          ),
                                                          Text(
                                                            // textb6k (1:236)
                                                            '/month',
                                                            style: SafeGoogleFont (
                                                              'Montserrat',
                                                              fontSize: 8*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.625*ffem/fem,
                                                              letterSpacing: 0.24*fem,
                                                              color: const Color(0xff252b5c),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      
                    ],
                  ),
               )
            ],
          ),
        );
}

Container _ourServicesHeaader(BuildContext context) {
  double baseWidth = 393;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Container(
    // itemheadertextbuttonwideH8p (1:175)
    margin: EdgeInsets.fromLTRB(14 * fem, 0 * fem, 212 * fem, 13 * fem),
    width: double.infinity,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // topestateagentPBr (1:177)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 179 * fem, 0 * fem),
          child: Text(
            'Our Services',
            style: SafeGoogleFont(
              'Lato',
              fontSize: 18 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.2 * ffem / fem,
              letterSpacing: 0.54 * fem,
              color: const Color(0xff252b5c),
            ),
          ),
        ),
        Text(
          // textUyz (1:178)
          'explore',
          textAlign: TextAlign.right,
          style: SafeGoogleFont(
            'Raleway',
            fontSize: 10 * ffem,
            fontWeight: FontWeight.w600,
            height: 0.9 * ffem / fem,
            letterSpacing: 0.3 * fem,
            color: const Color(0xff1e35af),
          ),
        ),
      ],
    ),
  );
}

Widget _homecategory(BuildContext context) {
  double baseWidth = 393;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return SizedBox(
    height: 47 * fem,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // buttoncategoryroundedactivercc (1:159)
          padding:
              EdgeInsets.fromLTRB(24 * fem, 17.5 * fem, 24 * fem, 14.5 * fem),
          width: 62 * fem,
          height: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xff1e35af),
            borderRadius: BorderRadius.circular(20 * fem),
          ),
          child: SizedBox(
            // layout9rc (1:160)
            width: double.infinity,
            height: double.infinity,
            child: Text(
              'All',
              style: SafeGoogleFont(
                'Raleway',
                fontSize: 10 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.175 * ffem / fem,
                letterSpacing: 0.3 * fem,
                color: const Color(0xfff5f4f7),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10 * fem,
        ),
        Container(
          // buttoncategoryroundeddWt (1:163)
          padding:
              EdgeInsets.fromLTRB(24 * fem, 17.5 * fem, 24 * fem, 11.5 * fem),
          width: 80 * fem,
          height: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xfff5f4f7),
            borderRadius: BorderRadius.circular(20 * fem),
          ),
          child: SizedBox(
            // layoutwXa (I1:163;222:473)
            width: double.infinity,
            height: double.infinity,
            child: Text(
              'House',
              style: SafeGoogleFont(
                'Raleway',
                fontSize: 10 * ffem,
                fontWeight: FontWeight.w500,
                height: 1.175 * ffem / fem,
                letterSpacing: 0.3 * fem,
                color: const Color(0xff252b5c),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10 * fem,
        ),
        Container(
          // buttoncategoryroundedRBr (1:164)
          padding:
              EdgeInsets.fromLTRB(24 * fem, 17.5 * fem, 24 * fem, 11.5 * fem),
          width: 101 * fem,
          height: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xfff5f4f7),
            borderRadius: BorderRadius.circular(20 * fem),
          ),
          child: SizedBox(
            // layoutjCY (I1:164;222:473)
            width: double.infinity,
            height: double.infinity,
            child: Text(
              'Apartment',
              style: SafeGoogleFont(
                'Raleway',
                fontSize: 10 * ffem,
                fontWeight: FontWeight.w500,
                height: 1.175 * ffem / fem,
                letterSpacing: 0.3 * fem,
                color: const Color(0xff252b5c),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10 * fem,
        ),
        Container(
          // buttoncategoryroundedpUt (1:165)
          padding:
              EdgeInsets.fromLTRB(24 * fem, 17.5 * fem, 24 * fem, 11.5 * fem),
          width: 80 * fem,
          height: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xfff5f4f7),
            borderRadius: BorderRadius.circular(20 * fem),
          ),
          child: SizedBox(
            // layoutYQt (I1:165;222:473)
            width: double.infinity,
            height: double.infinity,
            child: Text(
              'House',
              style: SafeGoogleFont(
                'Raleway',
                fontSize: 10 * ffem,
                fontWeight: FontWeight.w500,
                height: 1.175 * ffem / fem,
                letterSpacing: 0.3 * fem,
                color: const Color(0xff252b5c),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _usersNearby(BuildContext context) {
  double baseWidth = 393;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return SizedBox(
    // topestateagent2qr (1:166)
    width: 410 * fem,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // itemheadertextbuttonwideYZJ (1:167)
          margin: EdgeInsets.fromLTRB(13 * fem, 0 * fem, 70 * fem, 19 * fem),
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // topestateagentcZA (I1:167;15:71)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 105 * fem, 0 * fem),
                child: Text(
                  'Ambedkarites nearby',
                  style: SafeGoogleFont(
                    'Lato',
                    fontSize: 18 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2 * ffem / fem,
                    letterSpacing: 0.54 * fem,
                    color: const Color(0xff252b5c),
                  ),
                ),
              ),
              Container(
                // text7F2 (I1:167;221:2214)
                margin: EdgeInsets.fromLTRB(0 * fem, 5 * fem, 0 * fem, 0 * fem),
                child: Text(
                  'View All',
                  textAlign: TextAlign.right,
                  style: SafeGoogleFont(
                    'Raleway',
                    fontSize: 10 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 0.9 * ffem / fem,
                    letterSpacing: 0.3 * fem,
                    color: const Color(0xff1e35af),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 90 * fem,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // shapeUDz (I1:169;252:622)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 8 * fem),
                      width: 70 * fem,
                      height: 70 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50 * fem),
                        child: Image.asset(
                          'assets/images/home/shape-Be4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // textxur (I1:169;252:625)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'Shruti',
                        style: SafeGoogleFont(
                          'Raleway',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.175 * ffem / fem,
                          letterSpacing: 0.3 * fem,
                          color: const Color(0xff252b5c),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15 * fem,
              ),
              SizedBox(
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // shapeUDz (I1:169;252:622)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 8 * fem),
                      width: 70 * fem,
                      height: 70 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50 * fem),
                        child: Image.asset(
                          'assets/images/home/shape-rt4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // textxur (I1:169;252:625)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'Jaspreet',
                        style: SafeGoogleFont(
                          'Raleway',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.175 * ffem / fem,
                          letterSpacing: 0.3 * fem,
                          color: const Color(0xff252b5c),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15 * fem,
              ),
              SizedBox(
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // shapeUDz (I1:169;252:622)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 8 * fem),
                      width: 70 * fem,
                      height: 70 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50 * fem),
                        child: Image.asset(
                          'assets/images/home/shape-HDN.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // textxur (I1:169;252:625)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'Prasanna',
                        style: SafeGoogleFont(
                          'Raleway',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.175 * ffem / fem,
                          letterSpacing: 0.3 * fem,
                          color: const Color(0xff252b5c),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15 * fem,
              ),
              SizedBox(
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // shapeUDz (I1:169;252:622)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 8 * fem),
                      width: 70 * fem,
                      height: 70 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50 * fem),
                        child: Image.asset(
                          'assets/images/home/shape-Qk4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // textxur (I1:169;252:625)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'Abhishek',
                        style: SafeGoogleFont(
                          'Raleway',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.175 * ffem / fem,
                          letterSpacing: 0.3 * fem,
                          color: const Color(0xff252b5c),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15 * fem,
              ),
              SizedBox(
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // shapeUDz (I1:169;252:622)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 8 * fem),
                      width: 70 * fem,
                      height: 70 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50 * fem),
                        child: Image.asset(
                          'assets/images/home/shape-mrk.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // textxur (I1:169;252:625)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'Amitanshu',
                        style: SafeGoogleFont(
                          'Raleway',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.175 * ffem / fem,
                          letterSpacing: 0.3 * fem,
                          color: const Color(0xff252b5c),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15 * fem,
              ),
              SizedBox(
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // shapeUDz (I1:169;252:622)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 8 * fem),
                      width: 70 * fem,
                      height: 70 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50 * fem),
                        child: Image.asset(
                          'assets/images/home/shape-mrk.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // textxur (I1:169;252:625)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'Amitanshu',
                        style: SafeGoogleFont(
                          'Raleway',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.175 * ffem / fem,
                          letterSpacing: 0.3 * fem,
                          color: const Color(0xff252b5c),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30 * fem,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
