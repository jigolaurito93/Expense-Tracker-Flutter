import 'package:uuid/uuid.dart';

const uuid = Uuid();

// Create a fixed set of allowed values to be used in the category,
// You have to use atleast one of these values to create a category
enum Category { food, travel, leisure, work }

class Expense {
  // Build a constructor function that can be called to build an expense object based on this blueprint
  // Use name parameter to pass in data
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
    // initialize uuid function
  }) : id = uuid.v4();

  // Property constructor
  final String title;
  final double amount;
  final String id;
  final DateTime date;
  final Category category;
}
