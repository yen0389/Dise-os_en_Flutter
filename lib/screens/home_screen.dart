import 'package:flutter/material.dart';

import 'package:estilos/widgets/background.dart';
import 'package:estilos/widgets/card_table.dart';
import '../widgets/custom_bottom_navigation.dart';
import 'package:estilos/widgets/page_title.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [

          //Background
          Background(),

          //Home body
          _HomeBody(),

        ],
      ),

      bottomNavigationBar: CustomBottomNavigatorBar(),

    );
  }

}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          //Titulos
          PageTitle(),

          // Card Table
          CardTable()

        ],
      ),
    );
  }
}