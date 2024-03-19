import 'package:uuid/uuid.dart';

const uuid = Uuid();

// since we want to specify the cate
enum Category { food, travel, leisure, work }

class Expense {
  // the id get initial once the class get
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
