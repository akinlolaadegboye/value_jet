import 'package:valuejet/core/model/general/error_model.dart';
import 'package:valuejet/core/model/general/success_model.dart';
import 'package:valuejet/core/services/auth_service.dart';
import 'package:valuejet/utils/base_model.dart';
import 'package:valuejet/utils/helpers.dart';
import 'package:valuejet/utils/locator.dart';
import 'package:valuejet/utils/router/navigation_service.dart';
import 'package:valuejet/utils/router/route_names.dart';

class LoginViewModel extends BaseModel {
  final Authentication _authentication = locator<Authentication>();
  final NavigationService _navigationService = locator<NavigationService>();

  // signIn(LoginPayload signInBody) async {
  //   // print('dhdhd');
  //   setBusy(true);
  //   var result = await _authentication.login(signInBody.toJson());
  //
  //   if (result is ErrorModel) {
  //     setBusy(false);
  //     showErrorToast(result.error);
  //     notifyListeners();
  //     return ErrorModel(result.error);
  //   }
  //   if (result is SuccessModel) {
  //     setBusy(false);
  //     _navigationService.navigateTo(bookDeliveryRoute);
  //     notifyListeners();
  //     return SuccessModel(result.data);
  //   }
  // }
  //
  // forgotPassword(ForgotPassword forgotPassword) async {
  //   // print('dhdhd');
  //   setBusy(true);
  //   var result = await _authentication.forgotPassword(forgotPassword.toJson());
  //
  //   if (result is ErrorModel) {
  //     setBusy(false);
  //     showErrorToast(result.error);
  //     notifyListeners();
  //     return ErrorModel(result.error);
  //   }
  //   if (result is SuccessModel) {
  //     setBusy(false);
  //     _navigationService.navigateTo(verifyForgotPasswordRoute);
  //     notifyListeners();
  //     return SuccessModel(result.data);
  //   }
  // }
  //
  // verifyForgotPassword(VerifyForgotPassword verifyForgotPassword) async {
  //   // print('dhdhd');
  //   setBusy(true);
  //   var result = await _authentication.forgotPassword(verifyForgotPassword.toJson());
  //
  //   if (result is ErrorModel) {
  //     setBusy(false);
  //     showErrorToast(result.error);
  //     notifyListeners();
  //     return ErrorModel(result.error);
  //   }
  //   if (result is SuccessModel) {
  //     setBusy(false);
  //     _navigationService.navigateTo(loginRoute);
  //     notifyListeners();
  //     return SuccessModel(result.data);
  //   }
  // }
}
