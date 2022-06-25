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

class SelectArrival extends StatefulWidget {
  const SelectArrival({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<SelectArrival> {
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
              backgroundColor: AppColors.grey,
              appBar: AppBar(
                elevation: 0,
                foregroundColor: AppColors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    InkWell(
                      onTap: () {

                      },
                      child: Text(
                        "Select  Departure Airport",
                        style: TextStyle(
                            color: Colors.grey, fontSize: 14),
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
                              SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    //margin:  EdgeInsets.only(left: 30,right: 30,bottom: 20),
                                    padding: EdgeInsets.all(20),
                                    color: Colors.white,
                                    height: 60,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "ABUJA",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        Text(
                                          "(ABV)",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    //margin:  EdgeInsets.only(left: 30,right: 30,bottom: 20),
                                    padding: EdgeInsets.all(20),
                                    color: Colors.white,
                                    height: 60,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "KANO",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        Text(
                                          "(KAN)",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    //margin:  EdgeInsets.only(left: 30,right: 30,bottom: 20),
                                    padding: EdgeInsets.all(20),
                                    color: Colors.white,
                                    height: 60,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "ASABA",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        Text(
                                          "(ABB)",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    //margin:  EdgeInsets.only(left: 30,right: 30,bottom: 20),
                                    padding: EdgeInsets.all(20),
                                    color: Colors.white,
                                    height: 60,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "PORT HARCOURT",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        Text(
                                          "(PHC)",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    //margin:  EdgeInsets.only(left: 30,right: 30,bottom: 20),
                                    padding: EdgeInsets.all(20),
                                    color: Colors.white,
                                    height: 60,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "BENIN CITY",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        Text(
                                          "(BNI)",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    //margin:  EdgeInsets.only(left: 30,right: 30,bottom: 20),
                                    padding: EdgeInsets.all(20),
                                    color: Colors.white,
                                    height: 60,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "YOLA ",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        Text(
                                          "(YOL)",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    //margin:  EdgeInsets.only(left: 30,right: 30,bottom: 20),
                                    padding: EdgeInsets.all(20),
                                    color: Colors.white,
                                    height: 60,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "JOS ",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        Text(
                                          "(JOS)",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          )))));
        });
  }
}
