import 'package:flutter/material.dart';
import 'package:vpn_app/colors/colors.dart';

class PremiumPage extends StatelessWidget {
  const PremiumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBackgroundColor,
      appBar: AppBar(
        title: Text('Get Premium'),
      ),
    );
  }
}
