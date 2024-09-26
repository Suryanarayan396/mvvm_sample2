import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'home_viewmodel.dart';

class Homeview extends StatelessWidget {
  final String name;
  const Homeview({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Column(
              children: [
                Text("welcome $name"),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      model.logout();
                    },
                    child: Text("logout"))
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(name: name),
    );
  }
}
