import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    expense.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Text(
                  '₱${expense.amount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: Color(0xFF6B1E2B),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: const Color(0xFFC9A66B).withValues(alpha: 0.18),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.receipt_long,
                    color: Color(0xFF6B1E2B),
                    size: 20,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  expense.formattedDate,
                  style: const TextStyle(
                    color: Color(0xFF756A65),
                  ),
                ),
                const Spacer(),
                Text(
                  expense.category.name.toUpperCase(),
                  style: const TextStyle(
                    color: Color(0xFF6B1E2B),
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}