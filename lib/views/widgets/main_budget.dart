import 'package:flutter/material.dart';



class MainBudget extends StatelessWidget {
  const MainBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Text(
          '\$BUDGET',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
    );
  }
}
