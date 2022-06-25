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

class PassengerType extends StatefulWidget {
  const PassengerType({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<PassengerType> {
  final NavigationService _navigationService = locator<NavigationService>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late bool passwordVisible;
  late String fcmToken;
  String? selectedNumber;

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
                foregroundColor: AppColors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    InkWell(
                      onTap: () {

                      },
                      child: Text(
                        "Passenger Type",
                        style: TextStyle(
                            color: Colors.grey, fontSize: 14),
                      ),
                    )
                  ],
                ),
                backgroundColor: Color(0xffF4EEEE),
              ),
              body:
              Padding(
                padding: EdgeInsets.all(30),
                child:
              SingleChildScrollView(
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
                             Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Adult",
                                              style: TextStyle(
                                                  color: Colors.grey, fontSize: 14),
                                            ),
                                            Text(
                                              "12+ years",
                                              style: TextStyle(
                                                  color: Colors.grey, fontSize: 14),
                                            ),

                                          ],
                                        ),

                                        Container(
                                          padding: EdgeInsets.all(10),
                                          width: 70,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: AppColors.grey,
                                            border: Border.all(color: Colors.white),
                                            borderRadius: BorderRadius.circular(8.0),
                                          ),
                                          child: Center(
                                            child: DropdownButtonFormField<String>(
                                              iconEnabledColor:  AppColors.black,
                                              icon: Icon(
                                                  Icons.arrow_drop_down
                                              ),
                                              decoration: InputDecoration.collapsed(
                                                  hintStyle: TextStyle(color: AppColors.black,),
                                                  hintText: ''),
                                              // hint: Align(
                                              //     alignment: Alignment.center,
                                              //     child: Text("Gen", style: TextStyle(color: Colors.white))),
                                              isExpanded: true,
                                              value: selectedNumber,
                                              onChanged: (newValue) {
                                                setState(() {
                                                  selectedNumber = newValue;
                                                });
                                              },
                                              items: <String>[
                                                '1',
                                                '2',
                                                '3',
                                                '4',
                                                '5',
                                              ].map<DropdownMenuItem<String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<String>(
                                                      value: value,
                                                      child: Text(value,),
                                                    );
                                                  }).toList(),
                                            ),
                                          ),
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
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Children",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),
                                      Text(
                                        "2 - 11years",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),

                                    ],
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: 70,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: AppColors.grey,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Center(
                                      child: DropdownButtonFormField<String>(
                                        iconEnabledColor:  AppColors.black,
                                        icon: Icon(
                                            Icons.arrow_drop_down
                                        ),
                                        decoration: InputDecoration.collapsed(
                                            hintStyle: TextStyle(color: AppColors.black,),
                                            hintText: ''),
                                        // hint: Align(
                                        //     alignment: Alignment.center,
                                        //     child: Text("Gen", style: TextStyle(color: Colors.white))),
                                        isExpanded: true,
                                        value: selectedNumber,
                                        onChanged: (newValue) {
                                          setState(() {
                                            selectedNumber = newValue;
                                          });
                                        },
                                        items: <String>[
                                          '1',
                                          '2',
                                          '3',
                                          '4',
                                          '5',
                                        ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value,),
                                              );
                                            }).toList(),
                                      ),
                                    ),
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
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Infants",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),
                                      Text(
                                        "Under 2 years",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),

                                    ],
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: 70,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: AppColors.grey,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Center(
                                      child: DropdownButtonFormField<String>(
                                        iconEnabledColor:  AppColors.black,
                                        icon: Icon(
                                            Icons.arrow_drop_down
                                        ),
                                        decoration: InputDecoration.collapsed(
                                            hintStyle: TextStyle(color: AppColors.black,),
                                            hintText: ''),
                                        // hint: Align(
                                        //     alignment: Alignment.center,
                                        //     child: Text("Gen", style: TextStyle(color: Colors.white))),
                                        isExpanded: true,
                                        value: selectedNumber,
                                        onChanged: (newValue) {
                                          setState(() {
                                            selectedNumber = newValue;
                                          });
                                        },
                                        items: <String>[
                                          '1',
                                          '2',
                                          '3',
                                          '4',
                                          '5',
                                        ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value,),
                                              );
                                            }).toList(),
                                      ),
                                    ),
                                  ),


                                ],
                              ),


                              SizedBox(
                                height: 50,
                              ),
                              GeneralButton(onPressed: (){
_navigationService.pop();
                              }, buttonText: "Confirm"),



                              SizedBox(
                                height: 150,
                              ),

                              Text(
                                "Need special assistance or group travel?",
                                style: TextStyle(
                                    color: AppColors.secondaryColor, fontSize: 14),
                              ),
                            ],
                          ))))));
        });
  }
}
