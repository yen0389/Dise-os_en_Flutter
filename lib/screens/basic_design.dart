import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/img/landscapes.jpg')),
          
          Title(),

          ButtonSection(),
          
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Text('is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry when an unknown printer took a galley of type and scrambled it to make a type specimen book')),





        ],
      )
    );
  }

}


class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 30, vertical: 15 ),
      child: Row(
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold),),
              Text('Kandersteg, Switzerland', style: TextStyle( color: Colors.black45),),
            ],
          ),
          
          Expanded(child: Container()),

          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 32, vertical: 10 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          CustomButton( icon: Icons.call, text: 'Call'),
          CustomButton( icon: Icons.route, text: 'Route'),
          CustomButton( icon: Icons.share, text: 'Share')

        ],


      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( this.icon, color:  Colors.blue, size: 28),
        Text( this.text, style: TextStyle( color: Colors.blue))
      ],


    );
  }
}