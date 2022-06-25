import 'package:country_pickers/country.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:valuejet/ui/screens/register/register_view_model.dart';
import 'package:valuejet/ui/widget/phonenoTextInput.dart';
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

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Register> {
  final NavigationService _navigationService = locator<NavigationService>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late bool passwordVisible;
  late String fcmToken;
  String? selectedSex;
  String countryCode = "234";
  late bool active = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
        viewModelBuilder: () => RegisterViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              appBar: AppBar(
                foregroundColor: AppColors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                     Text(
                        "Sign Up",
                        style: TextStyle(
                            color: AppColors.secondaryColor, fontSize: 14),
                      ),

                  ],
                ),
                backgroundColor: Color(0xffF4EEEE),
              ),
              body: SingleChildScrollView(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    // fit: StackFit.expand,
                    children: <Widget>[
                      Container(
                          width: Responsive.width(context),
                          height: Responsive.height(context),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/plane_back.jpeg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  AppColors.black.withOpacity(0.3),
                                  BlendMode.darken),
                            ),
                          )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  'Join Our Value Flyer Programme',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.black,
                                  ),
                                ),
                                const Text(
                                  '',
                                  style: TextStyle(
                                      fontSize: 15, color: AppColors.black),
                                ),
                              ]),
                          Container(
                              margin: EdgeInsets.all(20),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.grey,
                              ),
                              height: Responsive.height(context) / 1.7,
                              child: SingleChildScrollView(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Form(
                                      key: _formKey,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "TITLE",
                                                  style: TextStyle(
                                                      color: AppColors.black,
                                                      fontSize: 14),
                                                ),
                                                TextFormField(
                                                  validator:
                                                      Validators().isEmpty,
                                                  controller: emailController,
                                                  
                                                  // maxLength: 11,
                                                  decoration: InputDecoration(
                                                    prefixIcon:Icon(
                                                      Icons.person,color: AppColors.black,
                                                    ),
                                                    hintText: '',
                                                    hintStyle: const TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                    fillColor:
                                                    AppColors.white,
                                                    filled: true,
                                                    focusedBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    disabledBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    enabledBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    labelStyle: const TextStyle(
                                                        color: AppColors.black),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                      borderSide:
                                                          const BorderSide(),
                                                    ),
                                                  ),
                                                  onChanged: (v) {
                                                    setState(() {});
                                                  },
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  style: const TextStyle(
                                                      color: AppColors.black),
                                                  cursorColor: AppColors.black,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "FIRST NAME",
                                                  style: TextStyle(
                                                      color: AppColors.black,
                                                      fontSize: 14),
                                                ),
                                                TextFormField(
                                                  validator:
                                                      Validators().isEmpty,
                                                  controller: emailController,
                                                  // maxLength: 11,
                                                  decoration: InputDecoration(
                                                    prefixIcon:Icon(
                                                      Icons.person,color: AppColors.black,
                                                    ),
                                                    hintText: '',
                                                    hintStyle: const TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                    fillColor:
                                                    AppColors.white,
                                                    filled: true,
                                                    focusedBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    disabledBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    enabledBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    labelStyle: const TextStyle(
                                                        color: AppColors.black),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                      borderSide:
                                                          const BorderSide(),
                                                    ),
                                                  ),
                                                  onChanged: (v) {
                                                    setState(() {});
                                                  },
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  style: const TextStyle(
                                                      color: AppColors.black),
                                                  cursorColor: AppColors.black,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "LAST NAME",
                                                  style: TextStyle(
                                                      color: AppColors.black,
                                                      fontSize: 14),
                                                ),
                                                TextFormField(

                                                  validator:
                                                      Validators().isEmpty,
                                                  controller: emailController,
                                                  // maxLength: 11,
                                                  decoration: InputDecoration(
                                                    prefixIcon:Icon(
                                                      Icons.person,color: AppColors.black,
                                                    ),
                                                    hintText: '',
                                                    hintStyle: const TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                    fillColor:
                                                    AppColors.white,
                                                    filled: true,
                                                    focusedBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    disabledBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    enabledBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    labelStyle: const TextStyle(
                                                        color: AppColors.black),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                      borderSide:
                                                          const BorderSide(),
                                                    ),
                                                  ),
                                                  onChanged: (v) {
                                                    setState(() {});
                                                  },
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  style: const TextStyle(
                                                      color: AppColors.black),
                                                  cursorColor: AppColors.black,
                                                ),
                                                SizedBox(height: 10,),
                                                Text(
                                                  "GENDER",
                                                  style: TextStyle(
                                                      color: AppColors.black,
                                                      fontSize: 14),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  width: Responsive.width(context),
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(color: Colors.white),
                                                    borderRadius: BorderRadius.circular(1.0),
                                                  ),
                                                  child: Center(
                                                    child: DropdownButtonFormField<String>(
                                                      iconEnabledColor:  AppColors.secondaryColor,
                                                      icon: Icon(
                                                          Icons.keyboard_arrow_down
                                                      ),
                                                      decoration: InputDecoration.collapsed(
                                                          hintStyle: TextStyle(color: AppColors.black,),
                                                          hintText: 'Select Gender'),
                                                      // hint: Align(
                                                      //     alignment: Alignment.center,
                                                      //     child: Text("Gen", style: TextStyle(color: Colors.white))),
                                                      isExpanded: true,
                                                      value: selectedSex,
                                                      onChanged: (newValue) {
                                                        setState(() {
                                                          selectedSex = newValue;
                                                        });
                                                      },
                                                      items: <String>[
                                                        'Male',
                                                        'Female',
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
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "EMAIL ADDRESS",
                                                  style: TextStyle(
                                                      color: AppColors.black,
                                                      fontSize: 14),
                                                ),
                                                TextFormField(
                                                  validator:
                                                      Validators().isEmpty,
                                                  controller: emailController,
                                                  // maxLength: 11,
                                                  decoration: InputDecoration(
                                                    prefixIcon: Icon(
                                                      Icons.attach_email_rounded,color: AppColors.black,
                                                    ),
                                                    hintText: '',
                                                    hintStyle: const TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                    fillColor:
                                                        AppColors.white,
                                                    filled: true,
                                                    focusedBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    disabledBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    enabledBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    labelStyle: const TextStyle(
                                                        color: AppColors.black),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                      borderSide:
                                                          const BorderSide(),
                                                    ),
                                                  ),
                                                  onChanged: (v) {
                                                    setState(() {});
                                                  },
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  style: const TextStyle(
                                                      color: AppColors.black),
                                                  cursorColor: AppColors.black,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),

                                                Text(
                                                  "CONTACT NUMBER",
                                                  style: TextStyle(
                                                      color: AppColors.black,
                                                      fontSize: 14),
                                                ),
                                                PhoneNoTextInput(
                                                  onCountryChange: (Country country) {
                                                    setState(() {
                                                      countryCode = country.phoneCode;
                                                    });

                                                    print("$countryCode}");
                                                  },
                                                  onSaved: (phoneNum) {
                                                    // if (val.startsWith('0')) {
                                                    //   setState(() {
                                                    //     val = val.toString().substring(1);
                                                    //     // phoneNumber = val;
                                                    //   });
                                                    // }

                                                    // model.setPhoneNumber(phoneNumber: val);
                                                    print("$countryCode");
                                                    model.setPhoneNumber(
                                                        phoneNumber: "+" +
                                                            countryCode +
                                                            model.sanitizePhoneNumberInput(
                                                                phoneNum));
                                                  },
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "PASSWORD",
                                                  style: TextStyle(
                                                      color: AppColors.black,
                                                      fontSize: 14),
                                                ),
                                                TextFormField(
                                                  validator:
                                                      Validators().isEmpty,
                                                  controller:
                                                      passwordController,
                                                  decoration: InputDecoration(
                                                    suffixIcon: IconButton(
                                                      icon: Icon(
                                                        // Based on passwordVisible state choose the icon
                                                        passwordVisible
                                                            ? Icons.visibility
                                                            : Icons
                                                                .visibility_off,
                                                        color: AppColors.black,
                                                      ),
                                                      onPressed: () {
                                                        setState(() {
                                                          passwordVisible =
                                                              !passwordVisible;
                                                        });
                                                      },
                                                    ),
                                                    hintText: '******',
                                                    hintStyle: const TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        AppColors.white,
                                                    focusedBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    disabledBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    enabledBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4)),
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color:
                                                              AppColors.grey),
                                                    ),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                      borderSide:
                                                          const BorderSide(),
                                                    ),
                                                  ),
                                                  onChanged: (v) {
                                                    setState(() {});
                                                  },
                                                  obscureText: passwordVisible,
                                                  keyboardType: TextInputType
                                                      .visiblePassword,
                                                  style: const TextStyle(
                                                      color: AppColors.black),
                                                  cursorColor: AppColors.black,
                                                ),
                                              ]))),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        // _navigationService
                                        //     .navigateTo(forgotPasswordRoute);
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          InkWell(
                                            child: Text(
                                              'Forgot Password?',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color:
                                                      AppColors.secondaryColor,
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              ))),
                          Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                                "By clicking the button below, you accept Valuefly Privacy Policy and Terms & Conditions",
                                style:
                                    TextStyle(color: AppColors.secondaryColor),
                              )),
                          Container(
                              padding: const EdgeInsets.all(20),
                              child: GeneralButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _navigationService
                                        .pushAndRemoveUntil(homeRoute);
                                    // model.signIn(LoginPayload(
                                    //     email: emailController.text, password: passwordController.text, userToken: fcmToken));
                                  }
                                },
                                buttonText: 'Create Account',
                                splashColor: AppColors.primaryColor,
                                buttonTextColor: AppColors.white,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              )  ));
        });
  }
}
