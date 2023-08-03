import 'package:flutter/material.dart';

import 'package:budgety/models/budget.dart';
import 'package:budgety/views/widgets/main_budget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Budget du jour',
          style: Theme.of(context).copyWith().textTheme.titleLarge,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MainBudget(),
        ],
      ),
    );
  }
}
