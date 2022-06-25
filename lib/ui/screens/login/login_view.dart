import 'package:valuejet/ui/screens/manage_booking/manage_booking.dart';
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

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
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
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    Text(
                      "Sign In",
                      style: TextStyle(
                          color: AppColors.secondaryColor, fontSize: 14),
                    ),
                  ],
                ),
                backgroundColor: Color(0xffF4EEEE),
              ),
              body: SingleChildScrollView(
                  child: Column(
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
                            height: 100,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  'Login to',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const Text(
                                  ' your ValueJet account',
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
                              height: Responsive.height(context) / 2.2,
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
                                                  height: 20,
                                                ),
                                                Text(
                                                  "E-mail address",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                                TextFormField(
                                                  validator:
                                                      Validators().isEmpty,
                                                  controller: emailController,
                                                  // maxLength: 11,
                                                  decoration: InputDecoration(
                                                    hintText: '',
                                                    hintStyle: const TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                    fillColor: AppColors.white,
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
                                                  height: 20,
                                                ),
                                                Text(
                                                  "Password",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                    fillColor: AppColors.white,
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
                                  Container(
                                      padding: const EdgeInsets.all(20),
                                      child: GeneralButton(
                                        onPressed: () {
                                          _navigationService.pushAndRemoveUntil(
                                              bottomNavigationRoute);
                                          // if (_formKey.currentState!
                                          //     .validate()) {
                                          //   _navigationService
                                          //       .pushAndRemoveUntil(bottomNavigationRoute);
                                          //   // model.signIn(LoginPayload(
                                          //   //     email: emailController.text, password: passwordController.text, userToken: fcmToken));
                                          // }
                                        },
                                        buttonText: 'SIGN IN',
                                        splashColor: AppColors.primaryColor,
                                        buttonTextColor: AppColors.white,
                                      )),
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
                          Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: AppColors.grey,
                              ),
                              //height: Responsive.height(context) / 2.2,
                              child: ListTile(
                                onTap: () {
                                  _navigationService.navigateTo(registerRoute);
                                },
                                title: Text("Don’t have an account yet?"),
                                subtitle: Text(
                                  "Sign Up?",
                                  style:
                                      TextStyle(color: AppColors.primaryColor),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: AppColors.grey,
                              ),
                              //height: Responsive.height(context) / 2.2,
                              child: ListTile(
                                onTap: () {
                                  _navigationService
                                      .navigateTo(ManageBookingRoute);
                                },
                                title: Text("Already Booked a flight? "),
                                subtitle: Text(
                                  "Manage Booking",
                                  style:
                                      TextStyle(color: AppColors.primaryColor),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ))
                        ],
                      ),
                    ],
                  ),
                ],
              )));
        });
  }
}
