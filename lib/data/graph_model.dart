import 'package:flutter/material.dart';

import 'models.dart';

class GraphModel extends ChangeNotifier {
  final List<Month> _expensesByMonth = expensesByMonth;
  int get _highestByMonths => highestByMonths;
  int get _totalByMonths => totalByMonths;

  int? selectedMonthIndex;

  String get title => selectedMonthIndex != null ? _expensesByMonth[selectedMonthIndex!].name : 'Total';
  int get total => selectedMonthIndex != null ? _expensesByMonth[selectedMonthIndex!].total : _totalByMonths;

  int get _length =>
      selectedMonthIndex != null ? _expensesByMonth[selectedMonthIndex!].expenses.length : _expensesByMonth.length;

  List<int> get indexes => List.generate(_length, (index) => index++);

  List<Expense> get expenses => selectedMonthIndex != null ? _expensesByMonth[selectedMonthIndex!].expenses : [];

  List<String> get barTitles => selectedMonthIndex != null
      ? _expensesByMonth[selectedMonthIndex!]
          .expenses
          .map(
            (e) => e.abbr,
          )
          .toList()
      : _expensesByMonth
          .map(
            (e) => e.abbr,
          )
          .toList();

  List<double> get barValuePercentage => selectedMonthIndex != null
      ? _expensesByMonth[selectedMonthIndex!]
          .expenses
          .map(
            (e) => e.amount / _expensesByMonth[selectedMonthIndex!].highest,
          )
          .toList()
      : _expensesByMonth
          .map(
            (e) => e.total / _highestByMonths,
          )
          .toList();

  void selectMonthIndex(int index) {
    selectedMonthIndex = index;
    notifyListeners();
  }

  void unselectMonthIndex() {
    selectedMonthIndex = null;
    notifyListeners();
  }
}
