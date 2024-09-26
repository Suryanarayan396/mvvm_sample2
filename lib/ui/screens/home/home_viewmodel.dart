import 'dart:async';

import 'package:mvvm_sample2/app/app.router.dart';
import 'package:stacked/stacked.dart';

import '../../../app/utils.dart';

class HomeViewModel extends BaseViewModel {
  final String name;
  HomeViewModel({required this.name});
  void logout() {
    navigationService.pushNamedAndRemoveUntil(Routes.loginview);
  }
}
