import 'package:flutter/foundation.dart';

class Month {
  final String name;
  final String abbr;
  final List<Expense> expenses;
  const Month({
    required this.name,
    required this.expenses,
    required this.abbr,
  });

  int get total => expenses.fold(0, (previousValue, element) => previousValue + element.amount);

  int get highest => expenses.reduce((current, next) => next.amount > current.amount ? next : current).amount;

  @override
  bool operator ==(covariant Month other) {
    if (identical(this, other)) return true;

    return other.name == name && other.abbr == abbr && listEquals(other.expenses, expenses);
  }

  @override
  int get hashCode => name.hashCode ^ abbr.hashCode ^ expenses.hashCode;
}

class Expense {
  final String name;
  final String abbr;
  final int amount;
  const Expense({
    required this.name,
    required this.abbr,
    required this.amount,
  });

  @override
  bool operator ==(covariant Expense other) {
    if (identical(this, other)) return true;

    return other.name == name && other.amount == amount && other.abbr == abbr;
  }

  @override
  int get hashCode => name.hashCode ^ abbr.hashCode ^ amount.hashCode;
}

const List<Month> expensesByMonth = [
  Month(name: 'January', abbr: 'Jan', expenses: [
    Expense(name: 'Rent', abbr: 'Rnt', amount: 450),
    Expense(name: 'Groceries', abbr: 'Gro', amount: 300),
    Expense(name: 'Utilities', abbr: 'Utl', amount: 120),
    Expense(name: 'Transportation', abbr: 'Trp', amount: 200),
    Expense(name: 'Entertainment', abbr: 'Ent', amount: 150),
    Expense(name: 'Healthcare', abbr: 'Hlt', amount: 90),
  ]),
  Month(name: 'February', abbr: 'Feb', expenses: [
    Expense(name: 'Rent', abbr: 'Rnt', amount: 470),
    Expense(name: 'Groceries', abbr: 'Gro', amount: 280),
    Expense(name: 'Utilities', abbr: 'Utl', amount: 110),
    Expense(name: 'Transportation', abbr: 'Trp', amount: 210),
    Expense(name: 'Entertainment', abbr: 'Ent', amount: 160),
    Expense(name: 'Dining Out', abbr: 'Din', amount: 130),
  ]),
  Month(name: 'March', abbr: 'Mar', expenses: [
    Expense(name: 'Rent', abbr: 'Rnt', amount: 460),
    Expense(name: 'Groceries', abbr: 'Gro', amount: 310),
    Expense(name: 'Utilities', abbr: 'Utl', amount: 125),
    Expense(name: 'Transportation', abbr: 'Trp', amount: 195),
    Expense(name: 'Healthcare', abbr: 'Hlt', amount: 95),
    Expense(name: 'Insurance', abbr: 'Ins', amount: 220),
  ]),
  Month(name: 'April', abbr: 'Apr', expenses: [
    Expense(name: 'Rent', abbr: 'Rnt', amount: 480),
    Expense(name: 'Groceries', abbr: 'Gro', amount: 320),
    Expense(name: 'Utilities', abbr: 'Utl', amount: 130),
    Expense(name: 'Transportation', abbr: 'Trp', amount: 205),
    Expense(name: 'Entertainment', abbr: 'Ent', amount: 155),
    Expense(name: 'Clothing', abbr: 'Clo', amount: 140),
  ]),
  Month(name: 'May', abbr: 'May', expenses: [
    Expense(name: 'Rent', abbr: 'Rnt', amount: 455),
    Expense(name: 'Groceries', abbr: 'Gro', amount: 295),
    Expense(name: 'Utilities', abbr: 'Utl', amount: 115),
    Expense(name: 'Transportation', abbr: 'Trp', amount: 215),
    Expense(name: 'Healthcare', abbr: 'Hlt', amount: 100),
    Expense(name: 'Miscellaneous', abbr: 'Mis', amount: 125),
  ]),
  Month(name: 'June', abbr: 'Jun', expenses: [
    Expense(name: 'Rent', abbr: 'Rnt', amount: 470),
    Expense(name: 'Groceries', abbr: 'Gro', amount: 300),
    Expense(name: 'Utilities', abbr: 'Utl', amount: 120),
    Expense(name: 'Transportation', abbr: 'Trp', amount: 190),
    Expense(name: 'Entertainment', abbr: 'Ent', amount: 165),
    Expense(name: 'Dining Out', abbr: 'Din', amount: 110),
  ]),
  Month(name: 'July', abbr: 'Jul', expenses: [
    Expense(name: 'Rent', abbr: 'Rnt', amount: 490),
    Expense(name: 'Groceries', abbr: 'Gro', amount: 310),
    Expense(name: 'Utilities', abbr: 'Utl', amount: 135),
    Expense(name: 'Transportation', abbr: 'Trp', amount: 200),
    Expense(name: 'Healthcare', abbr: 'Hlt', amount: 105),
    Expense(name: 'Insurance', abbr: 'Ins', amount: 230),
  ]),
  Month(name: 'August', abbr: 'Aug', expenses: [
    Expense(name: 'Rent', abbr: 'Rnt', amount: 460),
    Expense(name: 'Groceries', abbr: 'Gro', amount: 320),
    Expense(name: 'Utilities', abbr: 'Utl', amount: 125),
    Expense(name: 'Transportation', abbr: 'Trp', amount: 210),
    Expense(name: 'Entertainment', abbr: 'Ent', amount: 175),
    Expense(name: 'Clothing', abbr: 'Clo', amount: 145),
  ]),
  Month(name: 'September', abbr: 'Sep', expenses: [
    Expense(name: 'Rent', abbr: 'Rnt', amount: 480),
    Expense(name: 'Groceries', abbr: 'Gro', amount: 300),
    Expense(name: 'Utilities', abbr: 'Utl', amount: 130),
    Expense(name: 'Transportation', abbr: 'Trp', amount: 220),
    Expense(name: 'Healthcare', abbr: 'Hlt', amount: 110),
    Expense(name: 'Miscellaneous', abbr: 'Mis', amount: 135),
  ]),
  Month(name: 'October', abbr: 'Oct', expenses: [
    Expense(name: 'Rent', abbr: 'Rnt', amount: 475),
    Expense(name: 'Groceries', abbr: 'Gro', amount: 310),
    Expense(name: 'Utilities', abbr: 'Utl', amount: 120),
    Expense(name: 'Transportation', abbr: 'Trp', amount: 215),
    Expense(name: 'Entertainment', abbr: 'Ent', amount: 160),
    Expense(name: 'Dining Out', abbr: 'Din', amount: 115),
  ]),
  Month(name: 'November', abbr: 'Nov', expenses: [
    Expense(name: 'Rent', abbr: 'Rnt', amount: 490),
    Expense(name: 'Groceries', abbr: 'Gro', amount: 320),
    Expense(name: 'Utilities', abbr: 'Utl', amount: 125),
    Expense(name: 'Transportation', abbr: 'Trp', amount: 200),
    Expense(name: 'Healthcare', abbr: 'Hlt', amount: 105),
    Expense(name: 'Insurance', abbr: 'Ins', amount: 240),
  ]),
  Month(name: 'December', abbr: 'Dec', expenses: [
    Expense(name: 'Rent', abbr: 'Rnt', amount: 460),
    Expense(name: 'Groceries', abbr: 'Gro', amount: 310),
    Expense(name: 'Utilities', abbr: 'Utl', amount: 130),
    Expense(name: 'Transportation', abbr: 'Trp', amount: 210),
    Expense(name: 'Entertainment', abbr: 'Ent', amount: 150),
    Expense(name: 'Clothing', abbr: 'Clo', amount: 135),
  ]),
];

final highestByMonths = expensesByMonth.reduce((current, next) => next.total > current.total ? next : current).total;
final totalByMonths = expensesByMonth.fold(0, (previousValue, element) => previousValue + element.total);
