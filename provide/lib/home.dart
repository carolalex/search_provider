import 'package:flutter/material.dart';
import 'package:provide/provider.dart';
import 'package:provider/provider.dart';

import 'horizantal.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Numberlistprovider>(
      builder: (context, numbersProviderModel, child) => Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numbersProviderModel.add();
          },
          child: Icon(Icons.add),
        ),
        body: SizedBox(
          child: Column(
            children: [
              TextField(
                onChanged: (text) {
                  context.read<Numberlistprovider>().setsearch(text);
                },
                decoration: InputDecoration(hintText: "Search..."),
              ),
              Text(
                numbersProviderModel.numbers.last.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: numbersProviderModel.search.isEmpty
                      ? numbersProviderModel.numbers.length
                      : 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      numbersProviderModel.search.isEmpty
                          ? numbersProviderModel.numbers[index].toString()
                          : numbersProviderModel
                              .getFilteredNumber()
                              .first
                              .toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Horizantal(),
                    ),
                  );
                },
                child: Text("Horizontal view"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
