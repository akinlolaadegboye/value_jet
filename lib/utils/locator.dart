import 'package:valuejet/core/services/auth_service.dart';
import 'package:get_it/get_it.dart';
import 'package:valuejet/utils/progressBarManager/dialog_service.dart';
import 'package:valuejet/utils/router/navigation_service.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => ProgressService());
 // locator.registerLazySingleton(() => Authentication());
  // locator.registerLazySingleton(() => PaymentService());
  // locator.registerLazySingleton(() => SocketService());

}
