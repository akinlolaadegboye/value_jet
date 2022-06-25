import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:valuejet/core/services/auth_service.dart';
import 'package:valuejet/ui/screens/bottom_navigation/bottom_nav_model_view.dart';
import 'package:valuejet/ui/screens/check_in/check_in.dart';
import 'package:valuejet/ui/screens/home/home.dart';
import 'package:valuejet/ui/screens/login/login_view.dart';
import 'package:valuejet/ui/screens/manage_booking/manage_booking.dart';
import 'package:valuejet/ui/wallet/wallet.dart';
import 'package:valuejet/utils/colors.dart';
import 'package:valuejet/utils/locator.dart';
import 'package:valuejet/utils/router/navigation_service.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<BottomNavigation> {
  // final Authentication _authentication = locator<Authentication>();
  final NavigationService _navigationService = locator<NavigationService>();

  late String counter;
  Widget getViewForIndex(int index) {
    print('jdjdsjds:::::::::::::::::');
    print(index);
    switch (index) {
      case 0:
        return Home();
      case 1:
        return Wallet();
      case 2:
        return CheckIn();
      case 3:
        return ManageBooking();
      case 4:
        return Login();
      default:
        return Login();
    }
  }

  @override
  void initState() {
    // call();
    // model. notificationCounter();
    super.initState();
  }
  // call()async{
  //   var result =await _authentication.notificationCountCall();
  //   setState(() {
  //     counter= result.toString();
  //   });
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateProvider>(builder: (context, model, _) {
      return Scaffold(
        backgroundColor: AppColors.white,
        body: getViewForIndex(model.currentTabIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (newTab) {
            print(newTab);
            model.setCurrentTabTo(newTabIndex: newTab);
          },
          currentIndex: model.currentTabIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/home.svg",
                width: 23.0,
                color: model.currentTabIndex == 0
                    ? AppColors.primaryColor
                    : AppColors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/wallet.svg",
                width: 23.0,
                color: model.currentTabIndex == 1
                    ? AppColors.primaryColor
                    : AppColors.black,
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/clipboard.svg",
                width: 23.0,
                color: model.currentTabIndex == 2
                    ? AppColors.primaryColor
                    : AppColors.black,
              ),
              label: 'Check-in',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/manage.svg",
                width: 23.0,
                color: model.currentTabIndex == 3
                    ? AppColors.primaryColor
                    : AppColors.black,
              ),
              label: 'Manage Bookings',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/person.svg",
                width: 23.0,
                color: model.currentTabIndex == 4
                    ? AppColors.primaryColor
                    : AppColors.black,
              ),
              label: 'Profile',
            ),
          ],
          selectedItemColor: AppColors.primaryColor,
        ),
      );
    });
  }
}
