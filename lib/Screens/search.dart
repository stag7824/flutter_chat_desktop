import 'package:flutter/material.dart';
import 'package:flutter_chat_desktop/services/database.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  DatabaseMethods databaseMethod = DatabaseMethods();
  //  QuerySnapshot searchResultSnapshot;

  bool isLoading = false;
  bool haveUserSearched = false;

  // Widget searchList(){
  //   return ListView.builder(itemCount: ,itemBuilder: (context,index){
  //     return
  //   });f
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Search"),
          centerTitle: true,
        ),
        body: Container(
            child: Column(
          children: [
            Container(
              color: Colors.red.shade100,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      style: const TextStyle(fontWeight: FontWeight.w500),
                      controller: searchController,
                      decoration: const InputDecoration(
                          hintText: "Search user name...",
                          hintStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.normal),
                          border: InputBorder.none),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print(databaseMethod.getallUsername().toString());
                      // .getByUsername(searchController.text)
                      //   .then((value) {
                      // print(value.toString());
                      // },
                      // );
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.red.shade300, Colors.red.shade400]),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: const Icon(Icons.search_rounded),
                    ),
                  )
                ],
              ),
            )
          ],
        )));
  }
}
