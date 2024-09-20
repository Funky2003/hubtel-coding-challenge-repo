import 'package:flutter/material.dart';
import 'package:flutter_projetcs/homepage/widgets/transaction_history_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage"),),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade100,
              borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 42, vertical: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Text(
                    "History",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                    ),
                  ),
                ),
                SizedBox(width: 14),
                Container(
                  margin: EdgeInsets.only(right: 4),
                  child: Text(
                    "Transaction Summary",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 22
                    ),
                  ),
                )
              ],
            ),
          ),

          Divider(height: 5, color: Colors.blueGrey.shade100),

          TransactionHistoryCard()
        ],
      ),
    );
  }
}
