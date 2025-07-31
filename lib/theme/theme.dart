import 'package:flutter/material.dart';

final darkTheme = ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.yellow,
        dividerColor: Colors.white30,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
           centerTitle: true,
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,

            ),

        ),
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        textTheme:TextTheme(
          bodyMedium:const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20

          ),
          labelSmall: TextStyle(
            // ignore: deprecated_member_use
            color:Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 17,

          ),
          
        ),
      );