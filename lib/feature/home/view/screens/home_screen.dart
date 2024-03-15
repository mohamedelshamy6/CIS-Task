import '../../../../core/widgets/my_app_bar.dart';
import '../widgets/search_field.dart';
import 'package:flutter/material.dart';

import '../widgets/items_list.dart';
import '../widgets/three_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        title: 'HomeScreen',
        icon: true,
      ),
      body: Column(
        children: [
          ThreeButtons(),
          SearchField(),
          ItemsList(),
        ],
      ),
    );
  }
}
