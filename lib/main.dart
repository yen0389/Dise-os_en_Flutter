import 'package:flutter/material.dart';

import 'package:estilos/screens/home_screen.dart';
import 'package:estilos/screens/scroll_design.dart';
import 'package:estilos/screens/basic_design.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design' : ( _ ) => BasicDesignScreen(),
        'scroll_screen': ( _ ) => ScrollScreen(),
        'home_screen'  : ( _ ) => HomeScreen(),
      },

    );
  }

}
