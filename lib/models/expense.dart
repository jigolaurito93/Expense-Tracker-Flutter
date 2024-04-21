import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Expense {
  // Build a constructor function that can be called to build an expense object based on this blueprint
  // Use name parameter to pass in data
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    // initialize uuid function
  }) : id = uuid.v4();

  // Property constructor
  final String title;
  final double amount;
  final String id;
  final DateTime date;
}
