import 'package:intl/intl.dart';
import 'package:valuejet/ui/widget/calender/calender.dart';
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

class SearchFlight extends StatefulWidget {
  const SearchFlight({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<SearchFlight> {
  final NavigationService _navigationService = locator<NavigationService>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late bool passwordVisible;
  late String fcmToken;
  late bool active = false;
  String type = "oneway";
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(Duration(days: 60));
  DateTime? departureDate;
  DateTime? arrivalDate;
  void showDemoDialog({BuildContext? context}) {
    showDialog(
      context: context!,
      builder: (BuildContext context) => CalenderPopupView(
        barrierDismissible: true,
         minimumDate: DateTime.now(),
        maximumDate:  type != "oneway"
            ?endDate:DateTime.now(),
        initialEndDate: type != "oneway"
            ?DateTime.now().add(Duration(days: 5)):startDate,
        initialStartDate: startDate,
        onApplyClick: (DateTime startData, DateTime endData) {
          setState(() {
            if (startData != null && endData != null) {
              startDate = startData;
              endDate = endData;
              departureDate = startData;
              arrivalDate = endData;

            }
          });

        },
        onCancelClick: () {},
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
                foregroundColor: AppColors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    InkWell(
                      onTap: () {
                        _navigationService.navigateTo(registerRoute);
                      },
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
              body: Container(
                  height: Responsive.height(context),
                  width: Responsive.width(context),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/plane_back.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SingleChildScrollView(
                      child: AnimationLimiter(
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
                                    height: 100,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        _navigationService
                                            .navigateTo(SelectArrivalRoute);
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 30, right: 30, bottom: 20),
                                        padding: EdgeInsets.all(20),
                                        color: Colors.white,
                                        height: 60,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                                "assets/images/plane_departure.png"),
                                            Text(
                                              "Select  Departure Airport",
                                              style: TextStyle(
                                                  color: AppColors.primaryColor,
                                                  fontSize: 14),
                                            ),
                                            Text("")
                                          ],
                                        ),
                                      )),
                                  InkWell(
                                      onTap: () {
                                        _navigationService
                                            .navigateTo(SelectArrivalRoute);
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 30, right: 30, bottom: 20),
                                        padding: EdgeInsets.all(20),
                                        color: Colors.white,
                                        height: 60,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                                "assets/images/plane_departure.png"),
                                            Text(
                                              "Select  Arrival Airport",
                                              style: TextStyle(
                                                  color: AppColors.primaryColor,
                                                  fontSize: 14),
                                            ),
                                            Text("")
                                          ],
                                        ),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 30, right: 30, bottom: 20),
                                    //  padding: EdgeInsets.all(20),
                                    color: Colors.white,
                                    height: 60,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                type = "oneway";
                                              });
                                            },
                                            child: Container(
                                                width: 100,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    type == "oneway"
                                                        ? Container(
                                                            color: AppColors
                                                                .secondaryColor,
                                                            height: 18,
                                                            width: 16,
                                                          )
                                                        : Container(),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    type == "oneway"
                                                        ? Text(
                                                            "One Way",
                                                            style: TextStyle(
                                                                color: AppColors
                                                                    .secondaryColor,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        : Text("One Way",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize: 14)),
                                                  ],
                                                ))),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                type = "return";
                                              });
                                            },
                                            child: Container(
                                                // width: 100,
                                                child: Row(
                                              children: [
                                                type == "return"
                                                    ? Text(
                                                        "Return Trip",
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .secondaryColor,
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    : Text("Return Trip",
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 14)),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                type == "return"
                                                    ? Container(
                                                        color: AppColors
                                                            .secondaryColor,
                                                        height: 18,
                                                        width: 16,
                                                      )
                                                    : Container(),
                                              ],
                                            ))),
                                      ],
                                    ),
                                  ),
          Container(
          margin: EdgeInsets.only(
          left: 30, right: 30, bottom: 20),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                                  InkWell(
                                      onTap: () {
                                        showDemoDialog(context: context);
                                      },
                                      child: Container(
                                        width: Responsive.width(context)/2.5,
                                        color: Colors.white,
                                        height: 60,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(""),
                                                Padding(padding: EdgeInsets.only(right: 10),child:
                                                Text(
                                                  "Departure",
                                                  style: TextStyle(
                                                      color: AppColors.primaryColor,
                                                      fontSize: 12),
                                                )),
                                              ],
                                            ),

                                            Divider(thickness: 1,),
                                            Text(departureDate == null? "Set date":DateFormat("dd, MMMM, y").format(departureDate!), style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16),)
                                          ],
                                        ),
                                      )),


            type != "oneway"
                ?
            InkWell(
                                          onTap: () {
                                            showDemoDialog(context: context);
          },
          child: Container(

            width: Responsive.width(context)/2.5,
          color: Colors.white,
          height: 60,
          child: Column(
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.only(left: 10),child:
          Text(
          "Arrival",
          style: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 12),
          ) ),
            Text(""),
          ],
          ),

          Divider(thickness: 1,),
          Text(arrivalDate == null? "Set date":DateFormat("dd, MMMM, y").format(arrivalDate!), style: TextStyle(
          color: Colors.grey,
          fontSize: 16),)
          ],
          ),
          )):Container()


            ,])),


                                  InkWell(
                                      onTap: () {
                                        _navigationService
                                            .navigateTo(PassengerTypeRoute);
                                      },
                                      child: Container(
                                        width: Responsive.width(context),
                                        margin: EdgeInsets.only(
                                            left: 30, right: 30, bottom: 20),
                                        padding: EdgeInsets.all(20),
                                        color: Colors.white,
                                        height: 60,
                                        child:
                                            Center(
                                              child:
                                            Text(
                                              "1 Adult Passenger",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16),
                                            )),
                                      )),

                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 30, right: 30, bottom: 20),
                                    //padding: EdgeInsets.all(20),
                                    child: GeneralButton(
                                      onPressed: () {
_navigationService.navigateTo(FlightOutboundRoute);
                                      },
                                      buttonText: "Search Flight",
                                    ),
                                  )
                                ],
                              ))))));
        });
  }
}
