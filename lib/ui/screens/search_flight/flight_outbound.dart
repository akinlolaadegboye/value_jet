import 'package:flutter_svg/flutter_svg.dart';
import 'package:valuejet/utils/router/route_names.dart';
import 'package:valuejet/utils/screensize.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:valuejet/ui/screens/login/login_view_model.dart';
import 'package:valuejet/ui/widget/general_button.dart';
import 'package:valuejet/utils/colors.dart';
import 'package:valuejet/utils/locator.dart';
import 'package:valuejet/utils/router/navigation_service.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class FlightOutbound extends StatefulWidget {
  const FlightOutbound({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<FlightOutbound> {
  final NavigationService _navigationService = locator<NavigationService>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late bool passwordVisible;
  late String fcmToken;
  String? selectedNumber;
  String type = "lite";
  bool rememberMe = false;

  _onRememberMeChanged(bool? newValue) => setState(() {
        rememberMe = newValue!;

        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });
  late bool active = false;
  displayDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        //  contentPadding:EdgeInsets.zero ,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(1),
        ),
        content:
        FittedBox(
          child:
        Container(
            width: Responsive.width(context) / 1.2,
            height: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Outbound",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "Lagos",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey,
                    ),
                    Text(
                      "Abuja",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Departing from Lagos",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Departing at Thur 23rd Sept 2022 - 10 AM",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Duration: 1 hour 15 minutes",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Ancillary Information",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Buy 1 Additional Bag with Weight of 20KG: ₦3,500",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Business Lounge: ₦1,000",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Priority Boarding: ₦1,000",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Change Ticket: ₦3,000",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Total Price: ₦23,500",
                  style: TextStyle(fontWeight: FontWeight.bold),
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
                  "Pricing Details",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Pricing detail for 1 passenger",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Total Price: ₦23,500",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Container(
                  width: 300,
                  child: GeneralButton(
                    buttonText: 'Confirm',
                    onPressed: () {
                      Navigator.pop(context);
                        _navigationService.navigateTo(SummaryRoute);
                    },
                  ),
                )),
              ],
            ))),
      ),
    );
  }

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
                foregroundColor: AppColors.black,
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
                                //margin:  EdgeInsets.only(left: 30,right: 30,bottom: 20),
                                padding: EdgeInsets.all(10),
                                color: Color(0xffF4EEEE),
                                height: 70,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      SvgPicture.asset(
                                          "assets/images/plane_up.svg"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Flight Outbound",
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    ]),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "LOS - ABV",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        Text(
                                          "Fri Feb 18 2022",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            AppColors.secondaryColor,
                                        child: Text(
                                          "23",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Text("24",
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 18)),
                                      Text("25",
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 18)),
                                      Text("26",
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 18)),
                                    ],
                                  )),
                              Container(
                                //  padding: EdgeInsets.all(20),
                                // color: Colors.white,
                                height: 80,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                        onTap: () {},
                                        child: Container(
                                            // width: 100,
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              color: AppColors.secondaryColor,
                                              height: 40,
                                              width: 12,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Flight Information",
                                              style: TextStyle(
                                                color: AppColors.black,
                                                fontSize: 18,
                                              ),
                                            )
                                          ],
                                        ))),
                                    InkWell(
                                        onTap: () {},
                                        child: Container(
                                            // width: 100,
                                            child: Row(
                                          children: [
                                            Text(
                                              "Economy",
                                              style: TextStyle(
                                                color: AppColors.black,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              color: AppColors.secondaryColor,
                                              height: 40,
                                              width: 12,
                                            ),
                                          ],
                                        ))),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(10),
                                  child: ExpansionTile(
                                    textColor: AppColors.black,
                                    collapsedTextColor: AppColors.black,
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "07:00am",
                                              style: TextStyle(
                                                  color: AppColors.black),
                                            ),
                                            Text("LOS",
                                                style: TextStyle(
                                                    color: AppColors.black))
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "01h 45m",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            Text(
                                              "VK122",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            Container(
                                              width: 140,
                                              child: GeneralButton(
                                                buttonText:
                                                    "Starting from \n     ₦15,000",
                                                onPressed: () {},
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text("2 Seats left",
                                                style: TextStyle(
                                                    color: AppColors.black))
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text("08:45am",
                                                style: TextStyle(
                                                    color: AppColors.black)),
                                            Text("PHC",
                                                style: TextStyle(
                                                    color: AppColors.black))
                                          ],
                                        ),
                                      ],
                                    ),
                                    children: [
                                      Divider(
                                        thickness: 1,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        color: AppColors.lowGrey,
                                        height: 60,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        type = "lite";
                                                      });
                                                    },
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        color: type == "lite"
                                                            ? AppColors.lowGrey
                                                            : Color(0xffFFF1F2),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                topRight: Radius
                                                                    .circular(
                                                                        10)),
                                                        //  color: AppColors.primaryColor,
                                                      ),
                                                      width: Responsive.width(
                                                              context) /
                                                          3.3,
                                                      height: 40,
                                                      child: Center(
                                                          child: Text(
                                                        "Lite",
                                                        style: TextStyle(
                                                            color: type ==
                                                                    "lite"
                                                                ? Color(
                                                                    0xffEBA7AC)
                                                                : AppColors
                                                                    .black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16),
                                                      )),
                                                    )),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        type = "Plus";
                                                      });
                                                    },
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        color: type == "Plus"
                                                            ? AppColors.lowGrey
                                                            : AppColors
                                                                .primaryColor,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                topRight: Radius
                                                                    .circular(
                                                                        10)),
                                                        //  color: AppColors.primaryColor,
                                                      ),
                                                      width: Responsive.width(
                                                              context) /
                                                          3.3,
                                                      height: 40,
                                                      child: Center(
                                                          child: Text(
                                                        "Plus",
                                                        style: TextStyle(
                                                            color: type ==
                                                                    "Plus"
                                                                ? AppColors
                                                                    .primaryColor
                                                                : Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16),
                                                      )),
                                                    )),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        type = "Max";
                                                      });
                                                    },
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        color: type == "Max"
                                                            ? AppColors.lowGrey
                                                            : AppColors
                                                                .secondaryColor,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                topRight: Radius
                                                                    .circular(
                                                                        10)),
                                                        //  color: AppColors.primaryColor,
                                                      ),
                                                      width: Responsive.width(
                                                              context) /
                                                          3.4,
                                                      height: 40,
                                                      child: Center(
                                                          child: Text(
                                                        "Max",
                                                        style: TextStyle(
                                                            color: type == "Max"
                                                                ? AppColors
                                                                    .secondaryColor
                                                                : Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16),
                                                      )),
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      type == "lite"
                                          ? Column(children: [
                                              SizedBox(
                                                height: 50,
                                              ),
                                              Text(
                                                "One 6kg Hand Luggage",
                                                style: TextStyle(
                                                    color: AppColors.black,
                                                    fontSize: 16),
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              Text(
                                                "One 6kg Hand Luggage",
                                                style: TextStyle(
                                                    color: AppColors.black,
                                                    fontSize: 16),
                                              ),
                                              SizedBox(
                                                height: 100,
                                              ),
                                            ])
                                          : type == "Plus"
                                              ? Column(
                                                  children: [
                                                    Text(
                                                      "Please select additional options for your comfort",
                                                      style: TextStyle(
                                                          color:
                                                              AppColors.black,
                                                          fontSize: 10),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Checkbox(
                                                            activeColor: AppColors
                                                                .secondaryColor,
                                                            value: rememberMe,
                                                            onChanged:
                                                                _onRememberMeChanged),
                                                        Text(
                                                          "Buy additional 20KG weight:",
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .black,
                                                              fontSize: 16),
                                                        ),
                                                        Text(
                                                          "N 3,500",
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .secondaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 16),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Checkbox(
                                                            activeColor: AppColors
                                                                .secondaryColor,
                                                            value: rememberMe,
                                                            onChanged:
                                                                _onRememberMeChanged),
                                                        Text(
                                                          "Business Boarding",
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .black,
                                                              fontSize: 16),
                                                        ),
                                                        Text(
                                                          "N 3,500",
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .secondaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 16),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Checkbox(
                                                            activeColor: AppColors
                                                                .secondaryColor,
                                                            value: rememberMe,
                                                            onChanged:
                                                                _onRememberMeChanged),
                                                        Text(
                                                          "Priority Boarding",
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .black,
                                                              fontSize: 16),
                                                        ),
                                                        Text(
                                                          "N 3,500",
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .secondaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 16),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Checkbox(
                                                            activeColor: AppColors
                                                                .secondaryColor,
                                                            value: rememberMe,
                                                            onChanged:
                                                                _onRememberMeChanged),
                                                        Text(
                                                          "Change Ticket",
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .black,
                                                              fontSize: 16),
                                                        ),
                                                        Text(
                                                          "N 3,500",
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .secondaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 16),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Checkbox(
                                                            activeColor: AppColors
                                                                .secondaryColor,
                                                            value: rememberMe,
                                                            onChanged:
                                                                _onRememberMeChanged),
                                                        Container(
                                                            width: 200,
                                                            child: Text(
                                                              "Buy 2 Additional Bags at 20KG per price",
                                                              style: TextStyle(
                                                                  color:
                                                                      AppColors
                                                                          .black,
                                                                  fontSize: 16),
                                                            )),
                                                        Text(
                                                          "N 3,500",
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .secondaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 16),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                  ],
                                                )
                                              : Column(
                                                  children: [
                                                    Text(
                                                      "One 6kg Hand Luggage",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          color:
                                                              AppColors.black,
                                                          fontSize: 13),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      "One 6kg Hand Luggage",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          color:
                                                              AppColors.black,
                                                          fontSize: 13),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      "One 6kg Hand Luggage",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          color:
                                                              AppColors.black,
                                                          fontSize: 13),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      "One 6kg Hand Luggage",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          color:
                                                              AppColors.black,
                                                          fontSize: 13),
                                                    ),
                                                    SizedBox(
                                                      height: 100,
                                                    ),
                                                  ],
                                                ),
                                      Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: AppColors.grey,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            //  color: AppColors.primaryColor,
                                          ),
                                          width: Responsive.width(context),
                                          height: 70,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 200,
                                                child: GeneralButton(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(10)),
                                                  buttonText: "Continue",
                                                  onPressed: () {
                                                    displayDialog(context);
                                                  },
                                                ),
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "TOTAL",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "₦15,000",
                                                    style: TextStyle(
                                                        color: AppColors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18),
                                                  )
                                                ],
                                              )
                                            ],
                                          ))
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.all(10),
                                  child: ExpansionTile(
                                    textColor: AppColors.black,
                                    collapsedTextColor: AppColors.black,
                                    title: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "07:00am",
                                              style: TextStyle(
                                                  color: AppColors.black),
                                            ),
                                            Text("LOS",
                                                style: TextStyle(
                                                    color: AppColors.black))
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "01h 45m",
                                              style:
                                              TextStyle(color: Colors.grey),
                                            ),
                                            Text(
                                              "VK122",
                                              style:
                                              TextStyle(color: Colors.grey),
                                            ),
                                            Container(
                                              width: 140,
                                              child: GeneralButton(
                                                buttonText:
                                                "Starting from \n     ₦15,000",
                                                onPressed: () {},
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text("2 Seats left",
                                                style: TextStyle(
                                                    color: AppColors.black))
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text("08:45am",
                                                style: TextStyle(
                                                    color: AppColors.black)),
                                            Text("PHC",
                                                style: TextStyle(
                                                    color: AppColors.black))
                                          ],
                                        ),
                                      ],
                                    ),
                                    children: [
                                      Divider(
                                        thickness: 1,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        color: AppColors.lowGrey,
                                        height: 60,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        type = "lite";
                                                      });
                                                    },
                                                    child: Container(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        color: type == "lite"
                                                            ? AppColors.lowGrey
                                                            : Color(0xffFFF1F2),
                                                        borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(
                                                                10),
                                                            topRight: Radius
                                                                .circular(
                                                                10)),
                                                        //  color: AppColors.primaryColor,
                                                      ),
                                                      width: Responsive.width(
                                                          context) /
                                                          3.3,
                                                      height: 40,
                                                      child: Center(
                                                          child: Text(
                                                            "Lite",
                                                            style: TextStyle(
                                                                color: type ==
                                                                    "lite"
                                                                    ? Color(
                                                                    0xffEBA7AC)
                                                                    : AppColors
                                                                    .black,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 16),
                                                          )),
                                                    )),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        type = "Plus";
                                                      });
                                                    },
                                                    child: Container(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        color: type == "Plus"
                                                            ? AppColors.lowGrey
                                                            : AppColors
                                                            .primaryColor,
                                                        borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(
                                                                10),
                                                            topRight: Radius
                                                                .circular(
                                                                10)),
                                                        //  color: AppColors.primaryColor,
                                                      ),
                                                      width: Responsive.width(
                                                          context) /
                                                          3.3,
                                                      height: 40,
                                                      child: Center(
                                                          child: Text(
                                                            "Plus",
                                                            style: TextStyle(
                                                                color: type ==
                                                                    "Plus"
                                                                    ? AppColors
                                                                    .primaryColor
                                                                    : Colors.white,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 16),
                                                          )),
                                                    )),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        type = "Max";
                                                      });
                                                    },
                                                    child: Container(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        color: type == "Max"
                                                            ? AppColors.lowGrey
                                                            : AppColors
                                                            .secondaryColor,
                                                        borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(
                                                                10),
                                                            topRight: Radius
                                                                .circular(
                                                                10)),
                                                        //  color: AppColors.primaryColor,
                                                      ),
                                                      width: Responsive.width(
                                                          context) /
                                                          3.4,
                                                      height: 40,
                                                      child: Center(
                                                          child: Text(
                                                            "Max",
                                                            style: TextStyle(
                                                                color: type == "Max"
                                                                    ? AppColors
                                                                    .secondaryColor
                                                                    : Colors.white,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 16),
                                                          )),
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      type == "lite"
                                          ? Column(children: [
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Text(
                                          "One 6kg Hand Luggage",
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          "One 6kg Hand Luggage",
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 100,
                                        ),
                                      ])
                                          : type == "Plus"
                                          ? Column(
                                        children: [
                                          Text(
                                            "Please select additional options for your comfort",
                                            style: TextStyle(
                                                color:
                                                AppColors.black,
                                                fontSize: 10),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Checkbox(
                                                  activeColor: AppColors
                                                      .secondaryColor,
                                                  value: rememberMe,
                                                  onChanged:
                                                  _onRememberMeChanged),
                                              Text(
                                                "Buy additional 20KG weight:",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .black,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                "N 3,500",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .secondaryColor,
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Checkbox(
                                                  activeColor: AppColors
                                                      .secondaryColor,
                                                  value: rememberMe,
                                                  onChanged:
                                                  _onRememberMeChanged),
                                              Text(
                                                "Business Boarding",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .black,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                "N 3,500",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .secondaryColor,
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Checkbox(
                                                  activeColor: AppColors
                                                      .secondaryColor,
                                                  value: rememberMe,
                                                  onChanged:
                                                  _onRememberMeChanged),
                                              Text(
                                                "Priority Boarding",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .black,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                "N 3,500",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .secondaryColor,
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Checkbox(
                                                  activeColor: AppColors
                                                      .secondaryColor,
                                                  value: rememberMe,
                                                  onChanged:
                                                  _onRememberMeChanged),
                                              Text(
                                                "Change Ticket",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .black,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                "N 3,500",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .secondaryColor,
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Checkbox(
                                                  activeColor: AppColors
                                                      .secondaryColor,
                                                  value: rememberMe,
                                                  onChanged:
                                                  _onRememberMeChanged),
                                              Container(
                                                  width: 200,
                                                  child: Text(
                                                    "Buy 2 Additional Bags at 20KG per price",
                                                    style: TextStyle(
                                                        color:
                                                        AppColors
                                                            .black,
                                                        fontSize: 16),
                                                  )),
                                              Text(
                                                "N 3,500",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .secondaryColor,
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      )
                                          : Column(
                                        children: [
                                          Text(
                                            "One 6kg Hand Luggage",
                                            style: TextStyle(
                                                decoration:
                                                TextDecoration
                                                    .underline,
                                                color:
                                                AppColors.black,
                                                fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "One 6kg Hand Luggage",
                                            style: TextStyle(
                                                decoration:
                                                TextDecoration
                                                    .underline,
                                                color:
                                                AppColors.black,
                                                fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "One 6kg Hand Luggage",
                                            style: TextStyle(
                                                decoration:
                                                TextDecoration
                                                    .underline,
                                                color:
                                                AppColors.black,
                                                fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "One 6kg Hand Luggage",
                                            style: TextStyle(
                                                decoration:
                                                TextDecoration
                                                    .underline,
                                                color:
                                                AppColors.black,
                                                fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 100,
                                          ),
                                        ],
                                      ),
                                      Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: AppColors.grey,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            //  color: AppColors.primaryColor,
                                          ),
                                          width: Responsive.width(context),
                                          height: 70,
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 200,
                                                child: GeneralButton(
                                                  borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                                  buttonText: "Continue",
                                                  onPressed: () {
                                                    displayDialog(context);
                                                  },
                                                ),
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "TOTAL",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "₦15,000",
                                                    style: TextStyle(
                                                        color: AppColors.black,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 18),
                                                  )
                                                ],
                                              )
                                            ],
                                          ))
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.all(10),
                                  child: ExpansionTile(
                                    textColor: AppColors.black,
                                    collapsedTextColor: AppColors.black,
                                    title: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "07:00am",
                                              style: TextStyle(
                                                  color: AppColors.black),
                                            ),
                                            Text("LOS",
                                                style: TextStyle(
                                                    color: AppColors.black))
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "01h 45m",
                                              style:
                                              TextStyle(color: Colors.grey),
                                            ),
                                            Text(
                                              "VK122",
                                              style:
                                              TextStyle(color: Colors.grey),
                                            ),
                                            Container(
                                              width: 140,
                                              child: GeneralButton(
                                                buttonText:
                                                "Starting from \n     ₦15,000",
                                                onPressed: () {},
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text("2 Seats left",
                                                style: TextStyle(
                                                    color: AppColors.black))
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text("08:45am",
                                                style: TextStyle(
                                                    color: AppColors.black)),
                                            Text("PHC",
                                                style: TextStyle(
                                                    color: AppColors.black))
                                          ],
                                        ),
                                      ],
                                    ),
                                    children: [
                                      Divider(
                                        thickness: 1,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        color: AppColors.lowGrey,
                                        height: 60,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        type = "lite";
                                                      });
                                                    },
                                                    child: Container(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        color: type == "lite"
                                                            ? AppColors.lowGrey
                                                            : Color(0xffFFF1F2),
                                                        borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(
                                                                10),
                                                            topRight: Radius
                                                                .circular(
                                                                10)),
                                                        //  color: AppColors.primaryColor,
                                                      ),
                                                      width: Responsive.width(
                                                          context) /
                                                          3.3,
                                                      height: 40,
                                                      child: Center(
                                                          child: Text(
                                                            "Lite",
                                                            style: TextStyle(
                                                                color: type ==
                                                                    "lite"
                                                                    ? Color(
                                                                    0xffEBA7AC)
                                                                    : AppColors
                                                                    .black,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 16),
                                                          )),
                                                    )),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        type = "Plus";
                                                      });
                                                    },
                                                    child: Container(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        color: type == "Plus"
                                                            ? AppColors.lowGrey
                                                            : AppColors
                                                            .primaryColor,
                                                        borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(
                                                                10),
                                                            topRight: Radius
                                                                .circular(
                                                                10)),
                                                        //  color: AppColors.primaryColor,
                                                      ),
                                                      width: Responsive.width(
                                                          context) /
                                                          3.3,
                                                      height: 40,
                                                      child: Center(
                                                          child: Text(
                                                            "Plus",
                                                            style: TextStyle(
                                                                color: type ==
                                                                    "Plus"
                                                                    ? AppColors
                                                                    .primaryColor
                                                                    : Colors.white,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 16),
                                                          )),
                                                    )),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        type = "Max";
                                                      });
                                                    },
                                                    child: Container(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        color: type == "Max"
                                                            ? AppColors.lowGrey
                                                            : AppColors
                                                            .secondaryColor,
                                                        borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(
                                                                10),
                                                            topRight: Radius
                                                                .circular(
                                                                10)),
                                                        //  color: AppColors.primaryColor,
                                                      ),
                                                      width: Responsive.width(
                                                          context) /
                                                          3.4,
                                                      height: 40,
                                                      child: Center(
                                                          child: Text(
                                                            "Max",
                                                            style: TextStyle(
                                                                color: type == "Max"
                                                                    ? AppColors
                                                                    .secondaryColor
                                                                    : Colors.white,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 16),
                                                          )),
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      type == "lite"
                                          ? Column(children: [
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Text(
                                          "One 6kg Hand Luggage",
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          "One 6kg Hand Luggage",
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 100,
                                        ),
                                      ])
                                          : type == "Plus"
                                          ? Column(
                                        children: [
                                          Text(
                                            "Please select additional options for your comfort",
                                            style: TextStyle(
                                                color:
                                                AppColors.black,
                                                fontSize: 10),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Checkbox(
                                                  activeColor: AppColors
                                                      .secondaryColor,
                                                  value: rememberMe,
                                                  onChanged:
                                                  _onRememberMeChanged),
                                              Text(
                                                "Buy additional 20KG weight:",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .black,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                "N 3,500",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .secondaryColor,
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Checkbox(
                                                  activeColor: AppColors
                                                      .secondaryColor,
                                                  value: rememberMe,
                                                  onChanged:
                                                  _onRememberMeChanged),
                                              Text(
                                                "Business Boarding",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .black,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                "N 3,500",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .secondaryColor,
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Checkbox(
                                                  activeColor: AppColors
                                                      .secondaryColor,
                                                  value: rememberMe,
                                                  onChanged:
                                                  _onRememberMeChanged),
                                              Text(
                                                "Priority Boarding",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .black,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                "N 3,500",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .secondaryColor,
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Checkbox(
                                                  activeColor: AppColors
                                                      .secondaryColor,
                                                  value: rememberMe,
                                                  onChanged:
                                                  _onRememberMeChanged),
                                              Text(
                                                "Change Ticket",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .black,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                "N 3,500",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .secondaryColor,
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Checkbox(
                                                  activeColor: AppColors
                                                      .secondaryColor,
                                                  value: rememberMe,
                                                  onChanged:
                                                  _onRememberMeChanged),
                                              Container(
                                                  width: 200,
                                                  child: Text(
                                                    "Buy 2 Additional Bags at 20KG per price",
                                                    style: TextStyle(
                                                        color:
                                                        AppColors
                                                            .black,
                                                        fontSize: 16),
                                                  )),
                                              Text(
                                                "N 3,500",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .secondaryColor,
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      )
                                          : Column(
                                        children: [
                                          Text(
                                            "One 6kg Hand Luggage",
                                            style: TextStyle(
                                                decoration:
                                                TextDecoration
                                                    .underline,
                                                color:
                                                AppColors.black,
                                                fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "One 6kg Hand Luggage",
                                            style: TextStyle(
                                                decoration:
                                                TextDecoration
                                                    .underline,
                                                color:
                                                AppColors.black,
                                                fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "One 6kg Hand Luggage",
                                            style: TextStyle(
                                                decoration:
                                                TextDecoration
                                                    .underline,
                                                color:
                                                AppColors.black,
                                                fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "One 6kg Hand Luggage",
                                            style: TextStyle(
                                                decoration:
                                                TextDecoration
                                                    .underline,
                                                color:
                                                AppColors.black,
                                                fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 100,
                                          ),
                                        ],
                                      ),
                                      Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: AppColors.grey,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            //  color: AppColors.primaryColor,
                                          ),
                                          width: Responsive.width(context),
                                          height: 70,
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 200,
                                                child: GeneralButton(
                                                  borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                                  buttonText: "Continue",
                                                  onPressed: () {
                                                    displayDialog(context);
                                                  },
                                                ),
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "TOTAL",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "₦15,000",
                                                    style: TextStyle(
                                                        color: AppColors.black,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 18),
                                                  )
                                                ],
                                              )
                                            ],
                                          ))
                                    ],
                                  ))
                            ],
                          )))));
        });
  }
}
