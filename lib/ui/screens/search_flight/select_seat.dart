import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:valuejet/ui/screens/login/login_view_model.dart';
import 'package:valuejet/ui/widget/general_button.dart';
import 'package:valuejet/utils/colors.dart';
import 'package:valuejet/utils/locator.dart';
import 'package:valuejet/utils/router/navigation_service.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:valuejet/utils/router/route_names.dart';
import 'package:valuejet/utils/screensize.dart';

class SelectSeat extends StatefulWidget {
  const SelectSeat({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<SelectSeat> {
  final NavigationService _navigationService = locator<NavigationService>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late bool passwordVisible;
  late String fcmToken;

  late bool active = false;
  displayDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        //  contentPadding:EdgeInsets.zero ,

        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(1),
        ),
        content: Container(
            height: 200,
            width: Responsive.width(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                  "Seat 2C",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondaryColor,
                      decoration: TextDecoration.underline),
                )),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Chris Olodia",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                        width: 130,
                        child: GeneralButton(
                            onPressed: () {
                              Navigator.pop(context);
                              _navigationService.navigateTo(ReceiptRoute);
                            }, buttonText: "Select  this seat"))
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                    child: Text(
                  "Clear Selection",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.grey),
                )),
              ],
            )),
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
              backgroundColor: AppColors.grey,
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
                        "Select  Departure Airport",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
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
                              Container(
                                  padding: EdgeInsets.all(20),
                                  height: 600,
                                  color: Colors.white30,
                                  child: new GridView.count(
                                      crossAxisCount: 4,
                                      mainAxisSpacing: 4.0,
                                      crossAxisSpacing: 4.0,
                                      children: new List<Widget>.generate(30,
                                          (index) {
                                        return new GridTile(
                                          child: InkWell(
                                              onTap: () {
                                                displayDialog(context);
                                              },
                                              child: Container(
                                                  child: Column(
                                                children: [
                                                  SvgPicture.asset(
                                                    "assets/images/seat.svg",
                                                    width: 30,
                                                  ),
                                                  Text(index.toString()),
                                                ],
                                              ))),
                                        );
                                      }))),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          )))));
        });
  }
}
