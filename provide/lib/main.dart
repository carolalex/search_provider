import 'package:flutter/material.dart';
import 'package:provide/provider.dart';

import 'package:provider/provider.dart';


import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
      ChangeNotifierProvider(create: (context)=>Numberlistprovider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}