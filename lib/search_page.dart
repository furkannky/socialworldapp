import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(Icons.mic),
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(75),
                  ),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(75),
                  )
                )
              ),
            ),
          )
        ]
      )
    );
  }
}