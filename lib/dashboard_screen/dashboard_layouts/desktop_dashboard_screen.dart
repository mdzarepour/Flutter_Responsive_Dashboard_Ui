import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesktopDashboardScreen extends StatelessWidget {
  const DesktopDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(child: Text('desktop')),
    );
  }
}
