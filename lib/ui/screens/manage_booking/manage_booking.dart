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

class ManageBooking extends StatefulWidget {
  const ManageBooking({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<ManageBooking> {
  final NavigationService _navigationService = locator<NavigationService>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController refController = TextEditingController();
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
                foregroundColor: AppColors.black,
                //  automaticallyImplyLeading: false,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    InkWell(
                      onTap: () {
                        _navigationService.navigateTo(registerRoute);
                      },
                      child: Text(
                        "Wallet Balance : N130,240s",
                        style: TextStyle(
                            color: AppColors.secondaryColor, fontSize: 14),
                      ),
                    )
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
                                  AppColors.lowGrey.withOpacity(0.1),
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
                          SingleChildScrollView(
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
                                            TextFormField(
                                              textAlign: TextAlign.center,
                                              validator: Validators().isEmpty,
                                              controller: firstNameController,
                                              // maxLength: 11,
                                              decoration: InputDecoration(
                                                hintText: 'First Name',
                                                hintStyle: const TextStyle(
                                                  color: AppColors.primaryColor,
                                                ),
                                                fillColor: AppColors.white,
                                                filled: true,
                                                focusedBorder:
                                                    const OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(4)),
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: AppColors.grey),
                                                ),
                                                disabledBorder:
                                                    const OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(4)),
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: AppColors.grey),
                                                ),
                                                enabledBorder:
                                                    const OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(4)),
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: AppColors.grey),
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
                                              keyboardType: TextInputType.name,
                                              style: const TextStyle(
                                                  color: AppColors.black),
                                              cursorColor: AppColors.black,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            TextFormField(
                                              textAlign: TextAlign.center,
                                              validator: Validators().isEmpty,
                                              controller: lastNameController,
                                              // maxLength: 11,
                                              decoration: InputDecoration(
                                                hintText: 'Last Name',
                                                hintStyle: const TextStyle(
                                                  color: AppColors.primaryColor,
                                                ),
                                                fillColor: AppColors.white,
                                                filled: true,
                                                focusedBorder:
                                                    const OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(4)),
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: AppColors.grey),
                                                ),
                                                disabledBorder:
                                                    const OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(4)),
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: AppColors.grey),
                                                ),
                                                enabledBorder:
                                                    const OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(4)),
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: AppColors.grey),
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
                                              keyboardType: TextInputType.name,
                                              style: const TextStyle(
                                                  color: AppColors.black),
                                              cursorColor: AppColors.black,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            TextFormField(
                                              textAlign: TextAlign.center,
                                              validator: Validators().isEmpty,
                                              controller: refController,
                                              // maxLength: 11,
                                              decoration: InputDecoration(
                                                hintText: 'Reference Number',
                                                hintStyle: const TextStyle(
                                                  color: AppColors.primaryColor,
                                                ),
                                                fillColor: AppColors.white,
                                                filled: true,
                                                focusedBorder:
                                                    const OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(4)),
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: AppColors.grey),
                                                ),
                                                disabledBorder:
                                                    const OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(4)),
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: AppColors.grey),
                                                ),
                                                enabledBorder:
                                                    const OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(4)),
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: AppColors.grey),
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
                                              keyboardType:
                                                  TextInputType.number,
                                              style: const TextStyle(
                                                  color: AppColors.black),
                                              cursorColor: AppColors.black,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                          ]))),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                  padding: const EdgeInsets.all(20),
                                  child: GeneralButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _navigationService
                                            .navigateTo(BookingDetailsRoute);
                                        // model.signIn(LoginPayload(
                                        //     email: emailController.text, password: passwordController.text, userToken: fcmToken));
                                      }
                                    },
                                    buttonText: 'Managing Booking',
                                    splashColor: AppColors.primaryColor,
                                    buttonTextColor: AppColors.white,
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                  padding: const EdgeInsets.all(20),
                                  child: GeneralButton(
                                    onPressed: () {
                                      //
                                      // _navigationService
                                      //     .pushAndRemoveUntil(bottomNavigationRoute);
                                      // model.signIn(LoginPayload(
                                      //     email: emailController.text, password: passwordController.text, userToken: fcmToken));
                                    },
                                    buttonText: 'Log-In',
                                    splashColor: Color(0XFFA08299),
                                    buttonTextColor: AppColors.white,
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                  child: Container(
                                      width: 170,
                                      height: 60,
                                      child: Image.asset(
                                          "assets/images/logo.png")))
                            ],
                          )),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )));
        });
  }
}
