import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: SizedBox(
            height: 45,
            child: TextField(
              autofocus: true,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.search, color: Colors.black),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: BorderSide.none),
                hintText: "Search e.g Sweatshirt",
                hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
                opacity: .7,
                child: SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: Image(image: AssetImage("assets/images/search.png")),
                )),
            SizedBox(
              height: 40,
            ),
            Text(
              "Type to search ...",
              style: TextStyle(fontSize: 20),
            )
          ],
        ));
  }
}
