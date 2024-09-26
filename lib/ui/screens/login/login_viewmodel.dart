import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class loginviewmodel extends BaseViewModel {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  void login() {
    if (formkey.currentState!.validate()) {
      navigationService.navigateTo(Routes.homeview,
          arguments: HomeviewArguments(name: usernamecontroller.text));
    }
  }
}
