import 'dart:ui';

import 'package:flutter/material.dart';


class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Table(
      children: const [
        TableRow(
          children: [
            _SigleCard( color: Colors.blue, icon: Icons.border_all, text: 'General'),
            _SigleCard( color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transport'),

          ]
        ),

        TableRow(
          children: [
            _SigleCard( color: Colors.deepOrange, icon: Icons.accessibility_new_rounded, text: 'People'),
            _SigleCard( color: Colors.cyan, icon: Icons.add_alert_rounded, text: 'Alert'),

    ]
    ),
        TableRow(
            children: [
              _SigleCard( color: Colors.green, icon: Icons.add_a_photo, text: 'Photo'),
              _SigleCard( color: Colors.limeAccent, icon: Icons.accessible, text: 'Accesible'),

            ]
        ),

        TableRow(
            children: [
              _SigleCard( color: Colors.tealAccent, icon: Icons.add_a_photo, text: 'Photo'),
              _SigleCard( color: Colors.redAccent, icon: Icons.accessible, text: 'Accesible'),

            ]
        ),

        TableRow(
            children: [
              _SigleCard( color: Colors.blueAccent, icon: Icons.shopping_bag_outlined, text: 'Shopping'),
              _SigleCard( color: Colors.redAccent, icon: Icons.carpenter_outlined, text: 'Accesible'),

            ]
        ),
    ]
    );
  }

}

class _SigleCard extends StatelessWidget {

   final IconData icon;
   final Color color;
   final String text;

  const _SigleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text
  }): super(key: key);



  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5),
          child: Container(
            
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon( this.icon, size: 30, color: Colors.white,),
                  radius: 30,
                ),
                SizedBox(height: 10),
                Text( this.text, style: TextStyle( color: this.color, fontSize: 18),)
              ],
            ),
          ),
        ),
      ),
    );
  }

}

