import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'firebase_options.dart';

import 'package:marvel_heroes/pages/heroes.dart';
import 'package:marvel_heroes/cubits/heroes_cubit.dart';

const AndroidNotificationChannel notificationChannel =
    AndroidNotificationChannel(
        'marvel_heroes_channel', 'Marvel Heroes App notification chanhel',
        importance: Importance.high, playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(notificationChannel);

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Directionality(
      textDirection: TextDirection.ltr,
      child: BlocProvider(
        create: (_) => HeroesCubit(),
        child: const Heroes(),
      ),
    ));
  }
}
