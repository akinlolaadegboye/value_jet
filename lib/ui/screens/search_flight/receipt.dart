import 'package:flutter_svg/flutter_svg.dart';
import 'package:valuejet/ui/screens/bottom_navigation/bottom_navigation.dart';
import 'package:valuejet/utils/helpers.dart';
import 'package:valuejet/utils/screensize.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:valuejet/ui/screens/login/login_view_model.dart';
import 'package:valuejet/ui/widget/general_button.dart';
import 'package:valuejet/utils/colors.dart';
import 'package:valuejet/utils/locator.dart';
import 'package:valuejet/utils/router/navigation_service.dart';
import 'package:valuejet/utils/router/route_names.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Receipt extends StatefulWidget {
  const Receipt({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Receipt> {
  final NavigationService _navigationService = locator<NavigationService>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late bool passwordVisible;
  late String fcmToken;

  late bool active = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              appBar: AppBar(
                elevation: 0,
                foregroundColor: Colors.white,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Wallet Balance : N130,240",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    )
                  ],
                ),
                backgroundColor: AppColors.secondaryColor,
              ),
              body: SingleChildScrollView(
                  child: AnimationLimiter(
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: AnimationConfiguration.toStaggeredList(
                                duration: const Duration(milliseconds: 1000),
                                childAnimationBuilder: (widget) =>
                                    SlideAnimation(
                                  horizontalOffset:
                                      -MediaQuery.of(context).size.width / 4,
                                  child: FadeInAnimation(
                                      curve: Curves.fastOutSlowIn,
                                      child: widget),
                                ),
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    color: AppColors.grey,
                                    height: 70,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Muritala Muhammed Airport",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "(LOS)",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          child: SvgPicture.asset(
                                              "assets/images/h.plane.svg"),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Nnamdi Azikwe Int’l",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "(ABV)",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "PNR Number:",
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "QYETTM",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                      height: 450,
                                      color: AppColors.grey,
                                      //  margin: EdgeInsets.all(20),
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              //SizedBox(width: 20,),
                                              SvgPicture.asset(
                                                "assets/images/plane_up.svg",
                                                color: AppColors.primaryColor,
                                                width: 15,
                                              ),

                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Depart: ",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.black),
                                              ),
                                              Text(
                                                "Thu Mar 31 2022 09:30:00",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              //SizedBox(width: 20,),
                                              SvgPicture.asset(
                                                "assets/images/plane_down.svg",
                                                color: AppColors.primaryColor,
                                                width: 15,
                                              ),

                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Arrive: ",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.black),
                                              ),
                                              Text(
                                                "Thu Mar 31 2022 09:30:00",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              //SizedBox(width: 20,),
                                              SvgPicture.asset(
                                                "assets/images/book_flight.svg",
                                                color: AppColors.primaryColor,
                                                width: 30,
                                              ),

                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Flight No:   ",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.black),
                                              ),
                                              Text(
                                                "260",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              //SizedBox(width: 20,),
                                              SvgPicture.asset(
                                                "assets/images/seat.svg",
                                                color: AppColors.primaryColor,
                                                width: 25,
                                              ),

                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Seat No:        ",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.black),
                                              ),
                                              Text(
                                                "2C",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Thu Mar 31, 2022",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "07:30 AM",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: AppColors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              //SizedBox(width: 20,),
                                              Text(
                                                "Lagos",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: AppColors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),

                                              SizedBox(
                                                width: 20,
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                color: AppColors.primaryColor,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Abuja",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: AppColors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Direction:   ",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.black),
                                              ),
                                              Text(
                                                "outbound",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              //SizedBox(width: 20,),
                                              SvgPicture.asset(
                                                "assets/images/plane_up.svg",
                                                color: AppColors.primaryColor,
                                                width: 25,
                                              ),

                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "ECONOMY CLASS ",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color:
                                                        AppColors.primaryColor,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              //SizedBox(width: 20,),

                                              Text(
                                                "Ancillary: ",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.black),
                                              ),
                                              Text(
                                                "Buy 1 Additional Bag With Weight Of 20KG ",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Business Lounge, Priority Boarding, Change Ticket",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      height: 400,
                                      color: AppColors.grey,
                                      //  margin: EdgeInsets.all(20),
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Total : ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "₦ 36,225",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Base Fare"),
                                              Text(
                                                "N 15,000",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        AppColors.primaryColor),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Ancilliary"),
                                              Text(
                                                "N 8,500",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        AppColors.primaryColor),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Tax"),
                                              Text(
                                                "N 12,725",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        AppColors.primaryColor),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Surcharge"),
                                              Text(
                                                "0",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        AppColors.primaryColor),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  GeneralButton(
                                      onPressed: () {
                                        _navigationService
                                            .navigateTo(bottomNavigationRoute);
                                      },
                                      buttonText: "Continue")
                                ],
                              ))))));
        });
  }
}
