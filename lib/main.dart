import 'package:flutter/material.dart';
import 'package:vpn_app/colors/colors.dart';
import 'package:vpn_app/screens/Home_Page.dart';
import 'package:vpn_app/screens/Premimum_Page.dart';
import 'package:vpn_app/screens/Server_Page.dart';
import 'package:vpn_app/widgets/theme.dart';

void main() {
  runApp(const VpnApp());
}

class VpnApp extends StatelessWidget {
  const VpnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      title: 'VPN App',
      debugShowCheckedModeBanner: false,
      home: const HomeApp(),
    );
  }
}
