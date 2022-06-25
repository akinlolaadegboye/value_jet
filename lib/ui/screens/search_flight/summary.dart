import 'package:flutter_svg/flutter_svg.dart';
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

class Summary extends StatefulWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Summary> {
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
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                      height: 700,
                                      color: AppColors.grey,
                                      //  margin: EdgeInsets.all(20),
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Itinerary Information",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Divider(
                                            thickness: 2,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 15,
                                                backgroundColor:
                                                    AppColors.primaryColor,
                                                child: SvgPicture.asset(
                                                  "assets/images/plane_up.svg",
                                                  color: Colors.white,
                                                  width: 15,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Outbound",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color:
                                                        AppColors.primaryColor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Muritala Muhammed Airport",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color:
                                                        AppColors.primaryColor),
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
                                                "Nnamdi Azikwe Int’l",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color:
                                                        AppColors.primaryColor),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
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
                                            children: [
                                              //SizedBox(width: 20,),
                                              SvgPicture.asset(
                                                "assets/images/timer.svg",
                                                color: AppColors.primaryColor,
                                                width: 25,
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
                                            height: 10,
                                          ),
                                          SvgPicture.asset(
                                            "assets/images/v_plane.svg",
                                            color: AppColors.primaryColor,
                                            width: 25,
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Base Fare"),
                                              Text(
                                                "N 15,000",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                            "Total :  ₦ 36,225 ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.primaryColor,
                                                fontSize: 20),
                                          ),
                                        ],
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Adult (1)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Every field marked with * is important.",
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 100,
                                    color: AppColors.grey,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(""),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "First Name",
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                    Text(
                                                      "*",
                                                      style: TextStyle(
                                                          color: Colors.red),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                    height: 60,
                                                    width: 150,
                                                    child: TextFormField(
                                                      validator:
                                                          Validators().isEmpty,
                                                      controller:
                                                          emailController,
                                                      // maxLength: 11,
                                                      decoration:
                                                          InputDecoration(

                                                        hintText: '',
                                                        hintStyle:
                                                            const TextStyle(
                                                          color: Colors.grey,
                                                        ),
                                                        fillColor:
                                                            AppColors.white,
                                                        filled: true,
                                                        focusedBorder:
                                                            const OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          4)),
                                                          borderSide: BorderSide(
                                                              width: 1,
                                                              color: AppColors
                                                                  .grey),
                                                        ),
                                                        disabledBorder:
                                                            const OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          4)),
                                                          borderSide: BorderSide(
                                                              width: 1,
                                                              color: AppColors
                                                                  .grey),
                                                        ),
                                                        enabledBorder:
                                                            const OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          4)),
                                                          borderSide: BorderSide(
                                                              width: 1,
                                                              color: AppColors
                                                                  .grey),
                                                        ),
                                                        labelStyle:
                                                            const TextStyle(
                                                                color: AppColors
                                                                    .black),
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                          borderSide:
                                                              const BorderSide(),
                                                        ),
                                                      ),
                                                      onChanged: (v) {
                                                        setState(() {});
                                                      },
                                                      keyboardType:
                                                          TextInputType
                                                              .emailAddress,
                                                      style: const TextStyle(
                                                          color: AppColors.black),
                                                      cursorColor: AppColors.black,
                                                    )),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Last Name",
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                    Text(
                                                      "*",
                                                      style: TextStyle(
                                                          color: Colors.red),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                    height: 60,
                                                    width: 150,
                                                    child: TextFormField(
                                                      validator:
                                                      Validators().isEmpty,
                                                      controller:
                                                      emailController,
                                                      // maxLength: 11,
                                                      decoration:
                                                      InputDecoration(

                                                        hintText: '',
                                                        hintStyle:
                                                        const TextStyle(
                                                          color: Colors.grey,
                                                        ),
                                                        fillColor:
                                                        AppColors.white,
                                                        filled: true,
                                                        focusedBorder:
                                                        const OutlineInputBorder(
                                                          borderRadius:
                                                          BorderRadius.all(
                                                              Radius
                                                                  .circular(
                                                                  4)),
                                                          borderSide: BorderSide(
                                                              width: 1,
                                                              color: AppColors
                                                                  .grey),
                                                        ),
                                                        disabledBorder:
                                                        const OutlineInputBorder(
                                                          borderRadius:
                                                          BorderRadius.all(
                                                              Radius
                                                                  .circular(
                                                                  4)),
                                                          borderSide: BorderSide(
                                                              width: 1,
                                                              color: AppColors
                                                                  .grey),
                                                        ),
                                                        enabledBorder:
                                                        const OutlineInputBorder(
                                                          borderRadius:
                                                          BorderRadius.all(
                                                              Radius
                                                                  .circular(
                                                                  4)),
                                                          borderSide: BorderSide(
                                                              width: 1,
                                                              color: AppColors
                                                                  .grey),
                                                        ),
                                                        labelStyle:
                                                        const TextStyle(
                                                            color: AppColors
                                                                .black),
                                                        border:
                                                        OutlineInputBorder(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              5.0),
                                                          borderSide:
                                                          const BorderSide(),
                                                        ),
                                                      ),
                                                      onChanged: (v) {
                                                        setState(() {});
                                                      },
                                                      keyboardType:
                                                      TextInputType
                                                          .emailAddress,
                                                      style: const TextStyle(
                                                          color: AppColors.black),
                                                      cursorColor: AppColors.black,
                                                    )),
                                              ],
                                            ),
                                            Text(""),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
SizedBox(height: 20,),
                                  GeneralButton(onPressed: (){
                                    _navigationService.navigateTo(SelectSeatRoute);
                                  }, buttonText: "Continue")
                                ],
                              ))))));
        });
  }
}
