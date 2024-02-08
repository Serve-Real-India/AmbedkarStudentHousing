import 'package:ambedkar_student_housing/config/constant.dart';
import 'package:ambedkar_student_housing/model/onboard_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../auth/login_screen.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _pageController;
  late Size _size;
  //late List<OnboardModel> screens;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    print(prefs.getInt('onBoard'));
  }
  Widget buttonWidget(int index) {
    if (index != 0) {
      /// any other task
      return  Padding(
        padding: EdgeInsets.only(left: 30),
        child: InkWell(
          onTap: () async {
            _pageController.previousPage(
              duration: Duration(milliseconds: 200),
              curve: Curves.linear,
            );
          },
          child: const CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            child: IconButton(
                color: Color.fromARGB(1, 3, 5, 61),
                onPressed: null,
                icon: Icon(Icons.arrow_back_sharp)
            ),
          ),
        ),
      );

    }
    return SizedBox(width: index == 0 ? 100 : 20);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        children: [
          Container(
            child: Container(
              margin: const EdgeInsets.only(top: 37, bottom: 15),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: <Widget>[
                      Image.asset(
                          "assets/images/logo.png",
                        height: 67.0,
                        width: 45.0,
                        fit: BoxFit.cover,
                        //fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Container(
                    //color: Colors.grey[200],
                    width: 86,
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey[200],
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () async {

                            await _storeOnboardInfo();
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => const LoginScreen()));
                          },
                          child: Text(
                          "skip",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: kblack,
                              fontSize: 15,
                              fontFamily: "Montserrat"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
                height: MediaQuery.of(context).size.height,
                child: PageView.builder(
                    itemCount: screens.length,
                    controller: _pageController,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          //height: double.infinity,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        screens[index].text,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: index != 0 ? FontWeight.w400 : null,
                                          fontSize: index == 0 ? 25.0 : 12,
                                          //fontWeight: FontWeight.values,
                                          fontFamily: 'Lato',
                                          color:
                                              index == 0 ? kblack : const Color.fromARGB(
                                                  255, 83, 88, 122),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            index == 0 ? 'call' : '',
                                            style: TextStyle(
                                              fontSize: 25.0,
                                              //fontWeight: FontWeight.values,
                                              fontFamily: 'Lato',
                                              color: index % 2 == 0
                                                  ? kblack
                                                  : kblack,
                                            ),
                                          ),
                                          const SizedBox(width: 7),
                                          Text(
                                            index == 0 ? 'home' : '',
                                            style: const TextStyle(
                                                fontSize: 25.0,
                                                //fontWeight: FontWeight.values,
                                                fontFamily: 'Lato',
                                                color: Color.fromARGB(
                                                    255, 20, 34, 165),
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: index == 0 ? 20 : 0),
                                      Text(
                                        screens[index].desc,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: index != 0 ? FontWeight.w700 : null,
                                          fontSize: 14.0,
                                          fontFamily: 'Lato',
                                          color:
                                              index == 0 ? kblack : const Color.fromARGB(
                                                  255, 83, 88, 122),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Container(
                                    height: 445,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      //color: Colors.lightGreen,
                                      image: DecorationImage(
                                        image: AssetImage(screens[index].img),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Container(
                                              height: 10.0,
                                              child: ListView.builder(
                                                itemCount: screens.length,
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemBuilder: (context, index) {
                                                  return Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      0.0),
                                                          width: currentIndex ==
                                                                  index
                                                              ? 70
                                                              : 25,
                                                          height: 3,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: currentIndex ==
                                                                    index
                                                                ? Colors.white
                                                                : Colors
                                                                    .grey,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                        ),
                                                      ]);
                                                },
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 30),
                                            child: Row(
                                              children: [
                                                buttonWidget(index),
                                                SizedBox(width: index == 0 ? 0 : 20),
                                                // const IconButton(
                                                //     onPressed: null,
                                                //     icon: Icon(Icons
                                                //         .arrow_left_rounded)),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    if(index == screens.length - 1){
                                                      Navigator.pushReplacement(
                                                          context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                                                    }else{
                                                      _pageController.nextPage(
                                                        duration: Duration(milliseconds: 200),
                                                        curve: Curves.linear,
                                                      );
                                                    }
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromARGB(
                                                            255, 31, 46, 195),
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0)),
                                                    minimumSize: const Size(190, 54),
                                                  ),
                                                  child: Text(
                                                    screens[index].buttonText,
                                                    style: TextStyle(
                                                      color: kwhite,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                        ),
                      );
                    })),
          )
        ],
      ),
    ));
  }
}
