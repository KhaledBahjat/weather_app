import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search),
            label: Text(
              'Search',
              style: TextStyle(fontSize: 20),
            ),
            hintText: 'Enter City Name',
            border: OutlineInputBorder(borderSide: BorderSide()),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          ),
        ),
      ),
    );
  }
}
