import 'package:flutter/material.dart';
import 'package:flutter_projetcs/homepage/widgets/transaction_history_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade100,
                borderRadius: const BorderRadius.all(Radius.circular(8))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.all(4),
                    padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 12),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    child: const Text(
                      "History",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Container(
                    margin: const EdgeInsets.only(right: 4),
                    child: const Text(
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

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: const Text(
                      "May 24, 2022",
                      style: TextStyle(
                        color: Colors.blueGrey
                      ),
                    ),
                  ),
                ),
              ],
            ),

            TransactionHistoryCard(
              profileImage: "assets/images/mtn.png",
              receiver: "Emmanuel Rockson \nKwabena Uncle Ebo",
              color: Colors.green,
              colorShade: Colors.green.shade100,
              transactionStatus: "Successful",
            ),

            TransactionHistoryCard(
              profileImage: "assets/images/absa.jpeg",
              receiver: "Absa Bank",
              color: Colors.red,
              colorShade: Colors.red.shade100,
              transactionStatus: "Failed",
            ),
          ],
        ),
      ),
    );
  }
}
