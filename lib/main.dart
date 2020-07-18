import 'package:crypto_wallet_app/screens/create-pin-screen.dart';
import 'package:crypto_wallet_app/screens/home-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/starting-screen.dart';
import 'screens/login-option-screen.dart';
import 'screens/splash-screen.dart';
import 'screens/login-screen.dart';
import 'screens/signup-screen.dart';
import 'screens/admin-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MySplashScreen.id,
      routes: {
        StartingScreen.id: (context) => SafeArea(child: StartingScreen()),
        LoginOptionScreen.id: (context) => SafeArea(child: LoginOptionScreen()),
        MySplashScreen.id: (context) => SafeArea(child: MySplashScreen()),
        LogInScreen.id: (context) => SafeArea(child: LogInScreen()),
        SignUp.id: (context) => SafeArea(child: SignUp()),
        CreatePinScreen.id: (context) => SafeArea(child: CreatePinScreen()),
        HomeScreen.id: (context) => SafeArea(child: HomeScreen()),
        AdminScreen.id: (context) => SafeArea(child: AdminScreen()),
//        DepositCash.id: (context) => SafeArea(child: DepositCash()),
//        ConfirmWithdraw.id: (context) => SafeArea(child: ConfirmWithdraw()),
//        WithdrawCash.id: (context) => SafeArea(child: WithdrawCash()),
//        ProfileScreen.id: (context) => SafeArea(child: ProfileScreen()),
//        TransactionHistory.id: (context) =>
//            SafeArea(child: TransactionHistory()),
      },
    );
  }
}
