import 'package:valuejet/utils/screensize.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:valuejet/ui/screens/login/login_view_model.dart';
import 'package:valuejet/ui/widget/general_button.dart';
import 'package:valuejet/utils/colors.dart';
import 'package:valuejet/utils/locator.dart';
import 'package:valuejet/utils/router/navigation_service.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class OnlineCheck extends StatefulWidget {
  const OnlineCheck({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<OnlineCheck>
    with SingleTickerProviderStateMixin {
  final NavigationService _navigationService = locator<NavigationService>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late bool passwordVisible;
  late String fcmToken;

  late bool active = false;
  bool rememberMe = false;

  _onRememberMeChanged(bool? newValue) => setState(() {
        rememberMe = newValue!;
        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              appBar: AppBar(
                elevation: 0,
                //automaticallyImplyLeading: true,
                foregroundColor: AppColors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Wallet Balance : N130,240",
                        style: TextStyle(
                            color: AppColors.secondaryColor, fontSize: 14),
                      ),
                    )
                  ],
                ),
                backgroundColor: Color(0xffF4EEEE),
              ),
              body: Padding(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                      child: AnimationLimiter(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: AnimationConfiguration.toStaggeredList(
                                  duration: const Duration(milliseconds: 1000),
                                  childAnimationBuilder: (widget) =>
                                      SlideAnimation(
                                        horizontalOffset:
                                            -MediaQuery.of(context).size.width /
                                                4,
                                        child: FadeInAnimation(
                                            curve: Curves.fastOutSlowIn,
                                            child: widget),
                                      ),
                                  children: [
                                    Container(
                                        //width: 200,
                                        child: DefaultTabController(
                                            length: 4,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  TabBar(
                                                    controller: _controller,
                                                    unselectedLabelColor:
                                                        Colors.grey,
                                                    indicatorWeight: 3,
                                                    labelStyle:
                                                        TextStyle(fontSize: 12),
                                                    labelColor:
                                                        AppColors.primaryColor,
                                                    indicatorColor: AppColors
                                                        .secondaryColor,
                                                    tabs: [
                                                      Tab(
                                                        text:
                                                            "Flight Selection",
                                                      ),
                                                      Tab(
                                                        text: "Seat Selection",
                                                      ),
                                                      Tab(
                                                        text: "Confirm",
                                                      ),
                                                      Tab(
                                                        text: "Boarding",
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                      height: Responsive.height(
                                                              context) /
                                                          1.1,
                                                      child: TabBarView(
                                                        controller: _controller,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Flight Information",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18),
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                      width: 50,
                                                                      child: Checkbox(
                                                                          activeColor: AppColors
                                                                              .secondaryColor,
                                                                          value:
                                                                              rememberMe,
                                                                          onChanged:
                                                                              _onRememberMeChanged)),
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Text("ID",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                  Icon(Icons
                                                                      .arrow_upward)
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                      width: 50,
                                                                      child: Checkbox(
                                                                          activeColor: AppColors
                                                                              .secondaryColor,
                                                                          value:
                                                                              rememberMe,
                                                                          onChanged:
                                                                              _onRememberMeChanged)),
                                                                  Text(
                                                                      "IT00VK202202687268688085000001",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.normal)),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                      width: 50,
                                                                      child: Checkbox(
                                                                          activeColor: AppColors
                                                                              .secondaryColor,
                                                                          value:
                                                                              rememberMe,
                                                                          onChanged:
                                                                              _onRememberMeChanged)),
                                                                  Text(
                                                                      "IT00VK202202687268688085000001",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.normal)),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 50,
                                                              ),
                                                              Text(
                                                                "Passenger Information",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18),
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                      width: 50,
                                                                      child: Checkbox(
                                                                          activeColor: AppColors
                                                                              .secondaryColor,
                                                                          value:
                                                                              rememberMe,
                                                                          onChanged:
                                                                              _onRememberMeChanged)),
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Text("ID",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                  Icon(Icons
                                                                      .arrow_upward)
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                      width: 50,
                                                                      child: Checkbox(
                                                                          activeColor: AppColors
                                                                              .secondaryColor,
                                                                          value:
                                                                              rememberMe,
                                                                          onChanged:
                                                                              _onRememberMeChanged)),
                                                                  Text(
                                                                      "IT00VK202202687268688085000001",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.normal)),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                      width: 50,
                                                                      child: Checkbox(
                                                                          activeColor: AppColors
                                                                              .secondaryColor,
                                                                          value:
                                                                              rememberMe,
                                                                          onChanged:
                                                                              _onRememberMeChanged)),
                                                                  Text(
                                                                      "IT00VK202202687268688085000001",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.normal)),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Flight Information",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18),
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Flight Route",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                  Text(
                                                                    "Departure Date and Time",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Abuja to Lagos",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                      )),
                                                                  Text(
                                                                    "Thursday , 2022-03-28 - 01:45",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Lagos to Abuja",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                      )),
                                                                  Text(
                                                                    "Thursday , 2022-03-29 - 01:45",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Seat Selection",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    width: 100,
                                                                    child:
                                                                        GeneralButton(
                                                                      splashColor:
                                                                          Colors
                                                                              .white,
                                                                      buttonTextColor:
                                                                          AppColors
                                                                              .primaryColor,
                                                                      buttonText:
                                                                          "Back",
                                                                      onPressed:
                                                                          () {
                                                                        _controller
                                                                            .animateTo(0);
                                                                      },
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 100,
                                                                    child:
                                                                        GeneralButton(
                                                                      buttonText:
                                                                          "Next",
                                                                      onPressed:
                                                                          () {
                                                                        _controller
                                                                            .animateTo(2);
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Flight Information",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18),
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                      width:
                                                                          100,
                                                                      child: Text(
                                                                          "PNR",
                                                                          style: TextStyle(
                                                                              fontSize: 18,
                                                                              fontWeight: FontWeight.bold))),
                                                                  Container(
                                                                    width: 100,
                                                                    child: Text(
                                                                        "Flight",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.bold)),
                                                                  ),
                                                                  Container(
                                                                      width:
                                                                          130,
                                                                      child:
                                                                          Text(
                                                                        "Flight",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      )),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    width: 100,
                                                                    child: Text(
                                                                        "DHDDPU",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.normal)),
                                                                  ),
                                                                  Container(
                                                                    width: 100,
                                                                    child: Text(
                                                                        "W3 821",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.normal)),
                                                                  ),
                                                                  Container(
                                                                      width:
                                                                          130,
                                                                      child:
                                                                          Text(
                                                                        "Lagos - Abuja",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.normal),
                                                                      )),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    width: 100,
                                                                    child: Text(
                                                                        "DHDDPU",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.normal)),
                                                                  ),
                                                                  Container(
                                                                    width: 100,
                                                                    child: Text(
                                                                        "W3 821",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.normal)),
                                                                  ),
                                                                  Container(
                                                                      width:
                                                                          130,
                                                                      child:
                                                                          Text(
                                                                        "Lagos - Abuja",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.normal),
                                                                      )),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Text(
                                                                "Seat Cost",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Full Name",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                  Text(
                                                                    "Seat",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Ann Doe",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.normal)),
                                                                  Text("2A",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.normal)),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Ann Doe",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.normal)),
                                                                  Text("2A",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          fontWeight:
                                                                              FontWeight.normal)),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    width: 100,
                                                                    child:
                                                                        GeneralButton(
                                                                      splashColor:
                                                                          Colors
                                                                              .white,
                                                                      buttonTextColor:
                                                                          AppColors
                                                                              .primaryColor,
                                                                      buttonText:
                                                                          "Back",
                                                                      onPressed:
                                                                          () {
                                                                        _controller
                                                                            .animateTo(1);
                                                                      },
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 100,
                                                                    child:
                                                                        GeneralButton(
                                                                      buttonText:
                                                                          "Next",
                                                                      onPressed:
                                                                          () {
                                                                        _controller
                                                                            .animateTo(3);
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Online Check-in completed. Thank you for choosing ValueJet",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                              Text(
                                                                "Here are a few things to keep in mind.",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                              Text(
                                                                '''1. Please make sure you bring this boarding card with you.
2. Copies are not allowed. If original is missing, please re-print it from the check-in desks.
3. This boarding pass is valisd only for the passenger whose name is written.
4. Please make sure you have all documents to travel with you and proceed to gate with a picture ID.
5. Unaccompanied minors (age 7 - 12) and handicapped passengers should check in online due to special procedures.
6. If you do not have any baggage to be checked in, please present your boarding pass at the gate at least 20 minutes prior to departure time. If you do not baggage, please submit it at the check-in couter at least 45 minutes prior to the departure time.
7.Valuejet has the right to change the assigned seats due to operational reasons.
                                                          
                                                               ''',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12),
                                                              ),


                                                              Divider(thickness: 1,),
                                                              Text(
                                                                "Boarding Card Information",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                      width:
                                                                          120,
                                                                      child: Text(
                                                                          "Full Name",
                                                                          style: TextStyle(
                                                                              fontSize: 18,
                                                                              fontWeight: FontWeight.bold))),
                                                                  Container(
                                                                    width: 120,
                                                                    child: Text(
                                                                        "PNR",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.bold)),
                                                                  ),
                                                                  Container(
                                                                      width:
                                                                          130,
                                                                      child:
                                                                          Text(
                                                                        "Flight",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      )),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    width: 120,
                                                                    child: Text(
                                                                        "Ann Doe",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.normal)),
                                                                  ),
                                                                  Container(
                                                                    width: 120,
                                                                    child: Text(
                                                                        "14HE67",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.normal)),
                                                                  ),
                                                                  Container(
                                                                      width:
                                                                          130,
                                                                      child:
                                                                          Text(
                                                                        "W3-827",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.normal),
                                                                      )),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    width: 120,
                                                                    child: Text(
                                                                        "Aviv Jane",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.normal)),
                                                                  ),
                                                                  Container(
                                                                    width: 120,
                                                                    child: Text(
                                                                        "14HE67",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.normal)),
                                                                  ),
                                                                  Container(
                                                                      width:
                                                                          130,
                                                                      child:
                                                                          Text(
                                                                        "W3-827",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.normal),
                                                                      )),
                                                                ],
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                              ),
SizedBox(height: 30,),
                                                              Row(
                                                                children: [
Container(
  width: 200,
  child: GeneralButton(
    onPressed: (){

    },
    buttonText: "Print Boarding Pass",
  ),
)
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      )),
                                                ])))
                                  ]))))));
        });
  }
}
