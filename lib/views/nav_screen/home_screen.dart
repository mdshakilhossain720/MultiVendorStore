import 'package:flutter/material.dart';

import 'widgets/search_input.dart';
import 'widgets/welcome_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: MediaQuery.of(context).padding.top + 25,left: 30),
      child: Column(
        children: [
          WelComeText(),
          SizedBox(height: 10,),

          SearchInput(),

        ],
      ),
    );
  }
}

