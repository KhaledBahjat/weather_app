import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a city'),
      ),
      body: SearchView(),
    );
  }
}
