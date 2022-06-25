import 'package:flutter/material.dart';
import 'package:valuejet/ui/screens/bottom_navigation/bottom_navigation.dart';
import 'package:valuejet/ui/screens/check_in/online_check.dart';
import 'package:valuejet/ui/screens/login/login_view.dart';
import 'package:valuejet/ui/screens/login/forgot_password.dart';
import 'package:valuejet/ui/screens/manage_booking/booking_details.dart';
import 'package:valuejet/ui/screens/manage_booking/manage_booking.dart';
import 'package:valuejet/ui/screens/register/register_view.dart';
import 'package:valuejet/ui/screens/register/verification_view.dart';
import 'package:valuejet/ui/screens/search_flight/flight_outbound.dart';
import 'package:valuejet/ui/screens/search_flight/passenger_type.dart';
import 'package:valuejet/ui/screens/search_flight/receipt.dart';
import 'package:valuejet/ui/screens/search_flight/search_flight.dart';
import 'package:valuejet/ui/screens/search_flight/select_arrival.dart';
import 'package:valuejet/ui/screens/search_flight/select_seat.dart';
import 'package:valuejet/ui/screens/search_flight/summary.dart';
import 'package:valuejet/utils/router/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case loginRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const Login(),
      );
    case registerRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const Register(),
      );



    case bottomNavigationRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const BottomNavigation(),
      );


    case SearchFlightRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const SearchFlight(),
      );

    case SelectArrivalRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const SelectArrival(),
      );

    case PassengerTypeRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const PassengerType(),
      );

    case FlightOutboundRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const FlightOutbound(),
      );
    case SummaryRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const Summary(),
      );

    case SelectSeatRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const SelectSeat(),
      );


    case ReceiptRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const Receipt(),
      );

    case BookingDetailsRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const BookingDetails(),
      );
    case ManageBookingRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const ManageBooking(),
      );
    case OnlineCheckRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const OnlineCheck(),
      );


    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}

PageRoute _getPageRoute(
    {required String routeName, required Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}
