import 'package:flutter_svg/flutter_svg.dart';
import 'package:valuejet/ui/widget/transaction_tile.dart';
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

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Wallet> with SingleTickerProviderStateMixin {
  final NavigationService _navigationService = locator<NavigationService>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late bool passwordVisible;
  late String fcmToken;

  late bool active = false;

  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              appBar: AppBar(
                elevation: 0,
                automaticallyImplyLeading: false,
                backgroundColor: AppColors.secondaryColor,
              ),
              body: SingleChildScrollView(
                  child: AnimationLimiter(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: AnimationConfiguration.toStaggeredList(
                              duration: const Duration(milliseconds: 1000),
                              childAnimationBuilder: (widget) => SlideAnimation(
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
                                    width: 200,
                                    child: DefaultTabController(
                                        length: 2,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              TabBar(
                                                controller: _controller,
                                                unselectedLabelColor:
                                                    Colors.grey,
                                                indicatorWeight: 3,
                                                labelStyle:
                                                    TextStyle(fontSize: 12),
                                                labelColor:
                                                    AppColors.primaryColor,
                                                indicatorColor:
                                                    AppColors.secondaryColor,
                                                tabs: [
                                                  Tab(
                                                    text: "Wallet",
                                                  ),
                                                  Tab(
                                                    text: "Cards",
                                                  ),
                                                ],
                                              ),
                                            ]))),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    height: Responsive.height(context) / 1.2,
                                    child: TabBarView(
                                      controller: _controller,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.all(20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Balance",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 25),
                                                ),
                                                Container(
                                                    padding: EdgeInsets.all(30),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      //  color: AppColors.primaryColor,
                                                    ),
                                                    width: Responsive.width(
                                                        context),
                                                    height: 200,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "Wallet",
                                                          style: TextStyle(
                                                              color:
                                                                  AppColors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 16),
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        Row(
                                                          children: [
                                                            SvgPicture.asset(
                                                              "assets/images/wallet.svg",
                                                              width: 27.0,
                                                              color: AppColors
                                                                  .secondaryColor,
                                                            ),
                                                            SizedBox(
                                                              width: 100,
                                                            ),
                                                            Text(
                                                              "N130,240",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 21),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                              "Add money",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    )),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Transactions",
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                    PopupMenuButton<int>(
                                                      offset: Offset(20, 30),
                                                      iconSize: 120,
                                                      child: Container(
                                                        //padding: EdgeInsets.all(30),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: AppColors
                                                              .primaryColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          //  color: AppColors.primaryColor,
                                                        ),
                                                        width: 100,
                                                        height: 40,
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              "Filter",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .keyboard_arrow_down,
                                                              color:
                                                                  Colors.white,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      onSelected: (int
                                                          selectedValue) async {
                                                        switch (selectedValue) {
                                                          case 0:
                                                            break;
                                                          case 1:
                                                            break;
                                                          default:
                                                        }
                                                      },
                                                      itemBuilder: (context) =>
                                                          [
                                                        PopupMenuItem(
                                                          value: 0,
                                                          child: Text(
                                                            "Date",
                                                          ),
                                                        ),
                                                        PopupMenuItem(
                                                            value: 1,
                                                            child: Text(
                                                              "year",
                                                            )),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "Today",
                                                  style:
                                                      TextStyle(fontSize: 15),
                                                ),
                                                TransactionTile(),
                                                TransactionTile(),
                                              ],
                                            )),
                                        Container(
                                            padding: EdgeInsets.all(20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Cards",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 25),
                                                ),
                                                Container(
                                                    padding: EdgeInsets.all(30),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      //  color: AppColors.primaryColor,
                                                    ),
                                                    width: Responsive.width(
                                                        context),
                                                    height: 200,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "Add Card",
                                                          style: TextStyle(
                                                              color:
                                                                  AppColors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 22),
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                      ],
                                                    )),
                                                //SizedBox(height: 30,),
                                                Padding(
                                                    padding: EdgeInsets.all(20),
                                                    child: Text(
                                                      "Add your card for fast checkout during flight booking.",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ))
                                              ],
                                            )),
                                      ],
                                    ))
                              ])))));
        });
  }
}
