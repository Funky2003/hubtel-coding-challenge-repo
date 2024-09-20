import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionHistoryCard extends StatelessWidget {
  const TransactionHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [


            Row(
              children: [
                // left container
                Column(
                  children: [

                  ],
                ),


                // right container
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          children: [
                            Icon(Icons.check_circle, color: Colors.green),

                            Text("Successful", style: TextStyle(color: Colors.green),)
                          ],
                        ),
                      ),
                    ),
                    
                    Text("GHC 500", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            ),

            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "14:45PM",
                      style: TextStyle(
                          color: Colors.blueGrey.shade100
                      ),
                    ),
                  ],
                ),


                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset("assets/images/mtn.png"),
                      )
                    ],
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Emmanuel Rockson \nKwabena Uncle Ebo",
                      style: TextStyle(
                          color: Colors.black
                      ),
                      textAlign: TextAlign.start,
                    ),

                    Text(
                      "024 123 4567",
                      style: TextStyle(
                          color: Colors.blueGrey.shade100
                      ),
                    ),
                  ],
                ),

              ],
            ),

            Divider(height: 5, color: Colors.blueGrey.shade100),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.account_circle_rounded
                        ),
                      ),

                      Text(
                        "Personal",
                          style: TextStyle(
                          color: Colors.black
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 5,
                            height: 5,
                            child: CircleAvatar()
                        ),
                      ),

                      Text(
                        "Cool your heart",
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                ),

                Icon(
                  Icons.star,
                  color: Colors.yellow,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
