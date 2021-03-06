import 'package:provider/provider.dart';
import 'package:valuejet/ui/screens/bottom_navigation/bottom_nav_model_view.dart';
import 'package:valuejet/utils/locator.dart';
import 'package:valuejet/utils/colors.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valuejet/ui/screens/splashscreen.dart';
import 'package:valuejet/utils/progressBarManager/dialog_manager.dart';
import 'package:valuejet/utils/progressBarManager/dialog_service.dart';
import 'package:valuejet/utils/router/navigation_service.dart';
import 'package:valuejet/utils/router/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

late BuildContext contextB;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
  await Firebase.initializeApp();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late FirebaseMessaging messaging;

  late AndroidNotificationChannel channel;

  displayDialog(String title, String body) {
    return showTopSnackBar(
      contextB,
      CustomSnackBar.info(
        backgroundColor: AppColors.primaryColor,
        message: "$title\n$body",
      ),
    );
  }

  /// Initialize the [FlutterLocalNotificationsPlugin] package.
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  void registerNotification() async {
    var initializationSettings = InitializationSettings();
    channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      //'This channel is used for important notifications.', // description
      importance: Importance.high,
    );

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      print("message recieved");
      print(event.notification?.body);
      displayDialog(
          '${event.notification?.title}', '${event.notification?.body}');

      // Get.snackbar('${event.notification.body}', '${event.notification.title}',
      //     backgroundColor: AppColors.secondaryColor);
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {});
  }

  Future<void> _messageHandler(RemoteMessage message) async {
    //await Firebase.initializeApp(options: DefaultFirebaseConfig.platformOptions);
    print('Handling a background message ${message.messageId}');
    print('background message ${message.notification?.body}');
  }

  void initState() {
    // TODO: implement initState
    registerNotification();
    FirebaseMessaging.onBackgroundMessage(_messageHandler);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AppStateProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Value Jet',
          builder: (context, child) => Navigator(
            key: locator<ProgressService>().progressNavigationKey,
            onGenerateRoute: (settings) =>
                MaterialPageRoute(builder: (context) {
              return ProgressManager(child: child!);
            }),
          ),
          theme: ThemeData(
            backgroundColor: AppColors.backgroundColor,
            textTheme: GoogleFonts.nunitoTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          navigatorKey: locator<NavigationService>().navigationKey,
          home: const AnimatedSplashScreen(),
          onGenerateRoute: generateRoute,
        ));
  }
}
