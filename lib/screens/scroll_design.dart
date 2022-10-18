import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 0.5],
              colors: [
                Color(0xff5EE8C5),
                Color(0Xff30BAD6),
              ]
          )
        ),
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2()
          ],
        ),
      )
    );
  }


}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background
        Background(),


        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final textStyle = TextStyle( fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40 ),
          Text('11º', style: textStyle),
          Text('Miercoles', style: textStyle),

          Expanded(child: Container()),

          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0Xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image( image: AssetImage('assets/img/scroll-1.png'),)
    );
  }
}

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0Xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30 ),
            child: Text('Bienvenido', style: TextStyle( color: Colors.white, fontSize: 30 ),),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder()
          ),
        ),
      ),
    );
  }

}