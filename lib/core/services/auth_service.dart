
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:valuejet/core/model/authentication/auth_model.dart';
// import 'package:valuejet/core/model/authentication/login_response.dart';
// import 'package:valuejet/core/model/authentication/register_response.dart';
// import 'package:valuejet/core/model/general/error_model.dart';
// import 'package:valuejet/core/model/general/success_model.dart';
// import 'package:valuejet/core/services/index.dart';
// import 'package:valuejet/utils/helpers.dart';
// import 'package:valuejet/utils/locator.dart';
// import 'package:valuejet/utils/router/navigation_service.dart';
// import '../../utils/http/paths.dart';

// class Authentication {
//   late SharedPreferences prefs;
//   final NavigationService _navigationService = locator<NavigationService>();
//   late LoginResponse _currentUser;
//   LoginResponse get currentUser => _currentUser;

//   // WalletBalance? _walletBalance;
//   // WalletBalance? get walletBalance => _walletBalance;

//   late String _phoneNumber;
//   String get phoneNumber => _phoneNumber;

//   late String _userId;
//   String get userId => _userId;

//   late AuthModel _token;
//   AuthModel get token => _token;

//   saveRegPhone(String phone) async {
//     _phoneNumber = phone;
//   }

//   login(Map<dynamic, dynamic> payload) async {
//     try {
//       final result = await http.post(Paths.login, payload);
//       if (result is ErrorModel) {
//         return ErrorModel(result.error);
//       }

//       final AuthModel auth = AuthModel.fromJson(result.data['result']['token']);
//       _token = auth;
//       LoginResponse user = LoginResponse.fromJson(result.data['result']['userInformation']);
//       showToast(result.data['message']);
//       _currentUser = user;
//       _userId = user.id!;

//       prefs = await SharedPreferences.getInstance();
//       await prefs.setString('token', auth.token);
//       await prefs.setString('userId', user.id.toString());
//       await prefs.setString("profile", json.encode(user));
//       return SuccessModel(user);
//     } catch (e) {
//       return ErrorModel('Login failed, try again.');
//     }
//   }

//   alreadyLoggedIn() async {
//     SharedPreferences prefs;
//     prefs = await SharedPreferences.getInstance();
//     var profileResponse = prefs.getString('profile');
//     LoginResponse user = LoginResponse.fromJson(json.decode(profileResponse!));
//     _currentUser = user;
//     _userId = user.id!;
//     var t = prefs.getString('token');
//     final AuthModel auth = AuthModel.fromJson(t!);
//     _token = auth;
//     // walletBalanceCall();
//     // _navigationService.navigateReplacementTo(bookDeliveryRoute);
//     return SuccessModel(user);
//   }

//   signUp(Map<dynamic, dynamic> payload) async {
//     try {
//       final result = await http.post(Paths.signUp, payload);
//       if (result is ErrorModel) {
//         return ErrorModel(result.error);
//       }
//       _userId = result.data["result"]["id"];

//       RegisterResponse user = RegisterResponse.fromJson(result.data['data']);
//       showToast(result.data['message']);
//       // _currentUser = user;
//       SharedPreferences prefs;
//       prefs = await SharedPreferences.getInstance();
//       //  await prefs.setString('token', auth.token);
//       await prefs.setString('userId', user.data.id.toString());
//       await prefs.setString("userDetails", json.encode(user));
//       return SuccessModel(result.data);
//     } catch (e) {
//       return ErrorModel('$e');
//     }
//   }

//   editProfile(Map<dynamic, dynamic> payload) async {
//     try {
//       final result = await http.post(Paths.signUp, payload);
//       if (result is ErrorModel) {
//         return ErrorModel(result.error);
//       }

//       LoginResponse user = LoginResponse.fromJson(result.data['result']);
//       showToast(result.data['message']);
//       _currentUser = user;
//       SharedPreferences prefs;
//       prefs = await SharedPreferences.getInstance();
//       // await prefs.setString('token', user.token);
//       await prefs.setString('userId', user.id.toString());
//       await prefs.setString("userDetails", json.encode(user));
//       return SuccessModel(result.data);
//     } catch (e) {
//       return ErrorModel('$e');
//     }
//   }

//   changePassword(Map<dynamic, dynamic> payload) async {
//     try {
//       final result = await http.post(Paths.changePassword, payload);
//       if (result is ErrorModel) {
//         return ErrorModel(result.error);
//       }
//       showToast(result.data['message']);
//       return SuccessModel(result.data);
//     } catch (e) {
//       return ErrorModel('$e');
//     }
//   }

//   verifyOtp(Map<dynamic, dynamic> payload) async {
//     try {
//       final result = await http.post(Paths.verifyCode, payload);
//       if (result is ErrorModel) {
//         return ErrorModel(result.error);
//       }

//       // VerifyOtpResponse verifyOtpResponse =
//       //     VerifyOtpResponse.fromJson(result.data);

//       return SuccessModel(result.data);
//     } catch (e) {
//       return ErrorModel('$e');
//     }
//   }

//   forgotPassword(Map<dynamic, dynamic> payload) async {
//     try {
//       final result = await http.post(Paths.forgotPassword, payload);
//       if (result is ErrorModel) {
//         return ErrorModel(result.error);
//       }
//       _userId = result.data["result"]["id"];

//       showToast(result.data['message']);

//       return SuccessModel(result.data);
//     } catch (e) {
//       return ErrorModel('$e');
//     }
//   }

//   verifyForgotPassword(Map<dynamic, dynamic> payload) async {
//     try {
//       final result = await http.post(Paths.forgotPasswordVerify, payload);
//       if (result is ErrorModel) {
//         return ErrorModel(result.error);
//       }

//       showToast(result.data['message']);

//       return SuccessModel(result.data);
//     } catch (e) {
//       return ErrorModel('$e');
//     }
//   }

//   packageList() async {
//     try {
//       final result = await http.get(Paths.packageType);
//       if (result is ErrorModel) {
//         print("ERROR");
//         print(result.error);
//         return ErrorModel(result.error);
//       }
//       //  print("RESULT");
//       // print(result.data['result1']);
//       return SuccessModel(result.data['result1']);
//     } catch (e) {
//       print(e.toString());
//       return ErrorModel('$e');
//     }
//   }

// }
