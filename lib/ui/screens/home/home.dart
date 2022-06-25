import 'package:valuejet/ui/screens/bottom_navigation/bottom_nav_model_view.dart';
import 'package:valuejet/utils/screensize.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:valuejet/ui/screens/login/login_view_model.dart';
import 'package:valuejet/ui/widget/general_button.dart';
import 'package:valuejet/utils/colors.dart';
import 'package:valuejet/utils/helpers.dart';
import 'package:valuejet/utils/locator.dart';
import 'package:valuejet/utils/router/navigation_service.dart';
import 'package:valuejet/utils/router/route_names.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Home> {
  final NavigationService _navigationService = locator<NavigationService>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late bool passwordVisible;
  late String fcmToken;
  AppStateProvider appStateProvider = AppStateProvider();
  late bool active = false;

  @override
  void initState() {
    super.initState();
    appStateProvider = AppStateProvider.of(context);
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              body: SingleChildScrollView(
                  child: AnimationLimiter(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: AnimationConfiguration.toStaggeredList(
                            duration: const Duration(milliseconds: 1000),
                            childAnimationBuilder: (widget) => SlideAnimation(
                              horizontalOffset:
                                  -MediaQuery.of(context).size.width / 4,
                              child: FadeInAnimation(
                                  curve: Curves.fastOutSlowIn, child: widget),
                            ),
                            children: [
                              Container(
                                height: 240,
                                child: Stack(
                                  children: [
                                    // Container(
                                    //   height: 250,
                                    //   child:
                                    Image.asset("assets/images/hostess.png"),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 30, left: 20),
                                        child: Image.asset(
                                            "assets/images/logo.png")),
                                    Center(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 150,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(20),
                                            width: 150,
                                            child: GeneralButton(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(20)),
                                                onPressed: () {
                                                  _navigationService
                                                      .navigateTo(SearchFlightRoute);
                                                },
                                                buttonText: "BOOK A FLIGHT"))
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, top: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            _navigationService
                                                .navigateTo(SearchFlightRoute);
                                          },
                                          child: Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: AppColors.secondaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                //  color: AppColors.primaryColor,
                                              ),
                                              width: Responsive.width(context)/3.5,
                                              height: 90,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Search",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  Text(
                                                    "Flights",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  )
                                                ],
                                              ))),
                                      InkWell(
                                          onTap: () {
                                            appStateProvider.setCurrentTabTo(
                                                newTabIndex: 2);
                                            _navigationService.navigateReplacementTo(
                                                bottomNavigationRoute);
                                          },
                                          child: Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: AppColors.secondaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                //  color: AppColors.primaryColor,
                                              ),
                                              width: Responsive.width(context)/3.5,
                                              height: 90,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Check-In",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                ],
                                              ))),
                                      InkWell(
                                          onTap: () {
                                            appStateProvider.setCurrentTabTo(
                                                newTabIndex: 3);
                                            _navigationService.navigateReplacementTo(
                                                bottomNavigationRoute);
                                          },
                                          child: Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: AppColors.secondaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                //  color: AppColors.primaryColor,
                                              ),
                                              width: Responsive.width(context)/3.5,
                                              height: 90,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Manage",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  Text(
                                                    "Your",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  Text(
                                                    "Booking",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                ],
                                              ))),
                                    ],
                                  )),
                              Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.black),
                                  borderRadius: BorderRadius.circular(5),
                                  //  color: AppColors.primaryColor,
                                ),
                                width: Responsive.width(context),
                                height: 160,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 300,
                                      child: Image.asset(
                                          "assets/images/flyer.png"),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Sign in or Join Valueflyer",
                                          style: TextStyle(
                                              color: AppColors.primaryColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13),
                                        ),
                                        Text(
                                          " for a",
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "personalised guest experience, real-time updates,",
                                      style: TextStyle(
                                          color: AppColors.black, fontSize: 13),
                                    ),
                                    Text(
                                      " and much more",
                                      style: TextStyle(
                                          color: AppColors.black, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Popular Destinations",
                                        style: TextStyle(fontSize: 14),
                                      )
                                    ],
                                  )),
                              Container(
                                  height: 150,
                                  padding: EdgeInsets.only(left: 20),
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 130,
                                                width: 200,
                                                child: Image.asset(
                                                  "assets/images/yola.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Yola"),
                                                  SizedBox(
                                                    width: 115,
                                                  ),
                                                  Text("N15,000"),
                                                ],
                                              )
                                            ],
                                          )),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 130,
                                                width: 200,
                                                child: Image.asset(
                                                  "assets/images/ph.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Yola"),
                                                  SizedBox(
                                                    width: 115,
                                                  ),
                                                  Text("N15,000"),
                                                ],
                                              )
                                            ],
                                          )),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 130,
                                                width: 200,
                                                child: Image.asset(
                                                  "assets/images/yola.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Yola"),
                                                  SizedBox(
                                                    width: 115,
                                                  ),
                                                  Text("N15,000"),
                                                ],
                                              )
                                            ],
                                          )),
                                    ],
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                color: Color(0xffECB5CE),
                                height: 50,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.cancel_outlined),
                                    Text("INFORMATION HUB"),
                                    Icon(Icons.play_arrow),
                                  ],
                                ),
                              )
                            ],
                          )))));
        });
  }
}
