import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/viewmodel/home_viewmodel.dart';

void main() {
  runApp(const HomeView());
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Home View"),
              centerTitle: true,
            ),
            body: Center(
              child: Text(viewModel.counterService.counterValue.toString()),
            ),
          );
        });
  }
}
