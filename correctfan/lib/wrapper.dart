import 'package:correctfan/Onboarding/signIn.dart';
import 'package:correctfan/Screens/Play.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';

class Wrapper extends StatelessWidget {
  // const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    if (user == null ){
      return SignIn();
    }
    else {
      return Play();
    }
  }

  
}