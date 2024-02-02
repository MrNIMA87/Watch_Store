import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_store/components/theme.dart';
import 'package:watch_store/cubit/auth_cubit.dart';
import 'package:watch_store/route/route.dart';
import 'package:watch_store/screens/auth/snd_sms.dart';
import 'package:watch_store/screens/mainScreens/main_screen.dart';
import 'package:watch_store/screens/register_screen.dart';
import 'package:watch_store/utils/shared_preferences_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesManager().init();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: lightTheme(),
        // initialRoute: ScreenNames.root,
        routes: routes,
        home: RegisterScreen()
      ),
    );
  }
}
