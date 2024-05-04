import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import "package:expense_tracker/models/expense.dart";
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "PS5",
        amount: 499.99,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: "Xbox",
        amount: 399.9922,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          )
        ],
      ),
    );
  }
}
