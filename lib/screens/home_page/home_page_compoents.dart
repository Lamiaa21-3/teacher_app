import 'package:flutter/material.dart';

class HomePageComponent extends StatelessWidget {
  const HomePageComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(

      width: 90,
      height: 90,
      decoration:BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
          image: DecorationImage(

            image: AssetImage(
              'assets/coures.jpg',

            ),
            fit: BoxFit.contain,
          )
      ) ,


    );
  }
}
