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

class BookingDetails extends StatefulWidget {
  const BookingDetails({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<BookingDetails> {
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

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  displayDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(1),
              ),
              content: Container(
                  padding: EdgeInsets.all(20),
                  color: AppColors.grey,
                  width: Responsive.width(context),
                  height: 700,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Select  ancillaries for your flight(s)",
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "TOTAL : 0 NGN",
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FittedBox(
                          child: Container(
                              padding: EdgeInsets.all(5),
                              color: AppColors.white,
                              //  width: Responsive.width(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: 50,
                                          child: Checkbox(
                                              activeColor:
                                                  AppColors.secondaryColor,
                                              value: rememberMe,
                                              onChanged: _onRememberMeChanged)),
                                      Text(
                                        "Buy additional baggage weight of 20kg",
                                        style:
                                            TextStyle(color: Color(0xff716F6F)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "₦3,500",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff716F6F)),
                                      ),
                                    ],
                                  )),
                                  Divider(
                                    thickness: 1,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  FittedBox(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: 50,
                                          child: Checkbox(
                                              activeColor:
                                                  AppColors.secondaryColor,
                                              value: rememberMe,
                                              onChanged: _onRememberMeChanged)),
                                      Text(
                                        "Buy additional baggage weight of 40kg",
                                        style:
                                            TextStyle(color: Color(0xff716F6F)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "₦3,500",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff716F6F)),
                                      ),
                                    ],
                                  )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(
                                    thickness: 1,
                                  ),
                                  FittedBox(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: 50,
                                          child: Checkbox(
                                              activeColor:
                                                  AppColors.secondaryColor,
                                              value: rememberMe,
                                              onChanged: _onRememberMeChanged)),
                                      Text(
                                        "Pre-Select your seat",
                                        style:
                                            TextStyle(color: Color(0xff716F6F)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "₦3,500",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff716F6F)),
                                      ),
                                    ],
                                  )),
                                  Divider(
                                    thickness: 1,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  FittedBox(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: 50,
                                          child: Checkbox(
                                              activeColor:
                                                  AppColors.secondaryColor,
                                              value: rememberMe,
                                              onChanged: _onRememberMeChanged)),
                                      Text(
                                        "Flexible ticket (1 change permitted)",
                                        style:
                                            TextStyle(color: Color(0xff716F6F)),
                                      ),
                                      Divider(
                                        thickness: 1,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "₦3,500",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff716F6F)),
                                      ),
                                    ],
                                  )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(
                                    thickness: 1,
                                  ),
                                  FittedBox(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: 50,
                                          child: Checkbox(
                                              activeColor:
                                                  AppColors.secondaryColor,
                                              value: rememberMe,
                                              onChanged: _onRememberMeChanged)),
                                      Text(
                                        "Airport transfer (Bus)",
                                        style:
                                            TextStyle(color: Color(0xff716F6F)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "₦3,500",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff716F6F)),
                                      ),
                                    ],
                                  )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(
                                    thickness: 1,
                                  ),
                                  FittedBox(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: 50,
                                          child: Checkbox(
                                              activeColor:
                                                  AppColors.secondaryColor,
                                              value: rememberMe,
                                              onChanged: _onRememberMeChanged)),
                                      Text(
                                        "Airport transfer (Car)",
                                        style:
                                            TextStyle(color: Color(0xff716F6F)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "₦3,500",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff716F6F)),
                                      ),
                                    ],
                                  )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(
                                    thickness: 1,
                                  ),
                                  FittedBox(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: 50,
                                          child: Checkbox(
                                              activeColor:
                                                  AppColors.secondaryColor,
                                              value: rememberMe,
                                              onChanged: _onRememberMeChanged)),
                                      Text(
                                        "Check-In at airport",
                                        style:
                                            TextStyle(color: Color(0xff716F6F)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "₦3,500",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff716F6F)),
                                      ),
                                    ],
                                  )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(
                                    thickness: 1,
                                  ),
                                  FittedBox(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: 50,
                                          child: Checkbox(
                                              activeColor:
                                                  AppColors.secondaryColor,
                                              value: rememberMe,
                                              onChanged: _onRememberMeChanged)),
                                      Text(
                                        "Priority Boarding",
                                        style:
                                            TextStyle(color: Color(0xff716F6F)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "₦3,500",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff716F6F)),
                                      ),
                                    ],
                                  )),
                                ],
                              ))),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(""),
                          Row(
                            children: [
                              Text(
                                "Cancel",
                                style: TextStyle(color: AppColors.primaryColor),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 100,
                                child: GeneralButton(
                                  onPressed: () {},
                                  buttonText: "Submit",
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            ));
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
                                padding: EdgeInsets.all(5),
                                color: AppColors.secondaryColor,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(""),
                                    Text(
                                      "Your Cart",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Ticket Fare"),
                                          Text(
                                            "450,000 NGN",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Tax"),
                                          Text(
                                            "4,500 NGN",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Surcharge"),
                                          Text(
                                            "15,000 NGN",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Service Fee"),
                                          Text(
                                            "20,000 NGN",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "TOTAL",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "489,500 NGN",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Text(
                                        "Reservation Processes",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Reservation Number: 14ECPJ",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Divider(
                                        thickness: 1,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      FittedBox(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 130,
                                            child: GeneralButton(
                                              onPressed: () {},
                                              buttonText: "Print all tickets",
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            width: 120,
                                            child: GeneralButton(
                                              onPressed: () {},
                                              buttonText: "Change Flight",
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            width: 130,
                                            child: GeneralButton(
                                              onPressed: () {
                                                displayDialog(context);
                                              },
                                              buttonText: "Add Ancillaries",
                                            ),
                                          ),
                                        ],
                                      )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Divider(
                                        thickness: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: 50,
                                              child: Checkbox(
                                                  activeColor:
                                                      AppColors.secondaryColor,
                                                  value: rememberMe,
                                                  onChanged:
                                                      _onRememberMeChanged)),
                                          Container(
                                            width: 100,
                                            child: Text("ID",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          Container(
                                              width: 100,
                                              child: Text(
                                                "From",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                          Container(
                                              width: 100,
                                              child: Text(
                                                "To",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: 50,
                                              child: Checkbox(
                                                  activeColor:
                                                      AppColors.secondaryColor,
                                                  value: rememberMe,
                                                  onChanged:
                                                      _onRememberMeChanged)),
                                          Container(
                                            width: 100,
                                            child: Text("1",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          ),
                                          Container(
                                            width: 100,
                                            child: Text("Lagos",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          ),
                                          Container(
                                              width: 100,
                                              child: Text(
                                                "Abuja",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: 50,
                                              child: Checkbox(
                                                  activeColor:
                                                      AppColors.secondaryColor,
                                                  value: rememberMe,
                                                  onChanged:
                                                      _onRememberMeChanged)),
                                          Container(
                                            width: 100,
                                            child: Text("2",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          ),
                                          Container(
                                            width: 100,
                                            child: Text("Lagos",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          ),
                                          Container(
                                              width: 100,
                                              child: Text(
                                                "Abuja",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ],
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          )))));
        });
  }
}
