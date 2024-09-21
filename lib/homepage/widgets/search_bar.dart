import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 310,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_rounded, color: Colors.black),
                hintText: "Search",
                hintStyle: const TextStyle(color: Colors.grey),
                alignLabelWithHint: true,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.filter_list_rounded, color: Colors.black, size: 35),
          )
        ],
      ),
    );
  }
}
