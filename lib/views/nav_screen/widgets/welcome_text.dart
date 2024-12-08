import 'package:flutter/material.dart';

class WelComeText extends StatelessWidget {
  const WelComeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Holiday, What are You  are \n Lookin For ❤️",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19
        ),),
        Spacer(),

        Container(
          child: Icon(Icons.shopping_cart),
        )
      ],
    );
  }
}