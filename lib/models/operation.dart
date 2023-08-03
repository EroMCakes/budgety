import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

final formater = DateFormat.yMd();

const uuid = Uuid();

enum Category { errands, transportation, bill, house, entertainment }

const categoryIcons = {
  Category.errands: Icons.shopping_basket_outlined,
  Category.transportation: Icons.train_outlined,
  Category.bill: Icons.receipt_long_sharp,
  Category.house: Icons.house_outlined,
  Category.entertainment: Icons.gamepad_outlined,
};

class Operation {
  Operation({
    required this.amount,
    required this.date,
    required this.isExpense,
    required this.title,
    this.description,
    this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final String? description;
  final double amount;
  final bool isExpense;
  final DateTime date;
  final Category? category;

  String get formattedDate {
    return formater.format(date);
  }

  Operation.fromJson(Map<String, dynamic> json)
      : id = json["id"] as String,
        amount = json["amount"] as double,
        title = json["title"] as String,
        description = json["description"] as String ?? "",
        category = json["category"] as Category?,
        date = json["date"] as DateTime,
        isExpense = json["isExpense"] as bool;

  Map<String, dynamic> toJson() => {
        'id': id,
        'amount': amount,
        'title': title,
        'description': description!,
        'category': category!,
        'date': date,
        'isExpense': isExpense
      };
}
