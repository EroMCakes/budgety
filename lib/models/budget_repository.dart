import 'package:shared_preferences/shared_preferences.dart';

class BudgetRepository {
  void setBudget(double budgetValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setDouble('dailyBudget', budgetValue);
  }

  Future<double> getBudget() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getDouble('dailyBudget')!;
  }
}
