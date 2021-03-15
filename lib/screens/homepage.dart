//Flutter Imports
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webstabledemo/utilities/constants/resources.dart';
import 'package:webstabledemo/utilities/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constrains) {
      print(constrains.maxWidth);
      return Container(
          child: Row(
        children: [
          if (constrains.maxWidth >= 1000) _leftSideBar(context),
        ],
      ));
    }));
  }

  Widget _leftSideBar(BuildContext context) {
    return Container(
      color: AppTheme.primaryColor,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(top: 35, left: 50, bottom: 35),
      child: Column(
        children: [
          Text(
            'TechFinex',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
