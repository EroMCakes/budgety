class Budget {
  Budget({
    required this.amount,
    required this.budgetType,
  });

  final double amount;
  final BudgetType budgetType;
}

enum BudgetType { day, week, month, year }
