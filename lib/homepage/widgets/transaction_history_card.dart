import 'package:flutter/material.dart';

class TransactionHistoryCard extends StatelessWidget {

  final String receiver;
  final Color color;
  final Color colorShade;
  final String transactionStatus;
  final String profileImage;

  const TransactionHistoryCard({
    super.key,
    required this.receiver,
    required this.color,
    required this.colorShade,
    required this.transactionStatus,
    required this.profileImage
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // left container
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "14:45PM",
                      style: TextStyle(
                          color: Colors.blueGrey.shade200
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle
                          ),
                          child: Image.asset(profileImage, fit: BoxFit.cover,),
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            receiver,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18
                            ),
                            textAlign: TextAlign.start,
                          ),

                          Text(
                            "024 123 4567",
                            style: TextStyle(
                                color: Colors.blueGrey.shade200,
                              fontSize: 18
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),


              // right container
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: colorShade,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Row(
                          children: [
                            Icon(Icons.check_circle, color: color),

                            Text(
                              transactionStatus,
                              style: TextStyle(
                                  color: color
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    const Text("GHC 500", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24))
                  ],
                ),
              )
            ],
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(height: 5, color: Colors.blueGrey.shade200),
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.account_circle_rounded
                      ),
                    ),

                    SizedBox(width: 8),

                    Text(
                      "Personal",
                        style: TextStyle(
                        color: Colors.black
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 5,
                          height: 5,
                          child: CircleAvatar()
                      ),
                    ),

                    Text(
                      "Cool your heart wai",
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                  ],
                ),

                Icon(
                  Icons.star,
                  color: Colors.yellow,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
