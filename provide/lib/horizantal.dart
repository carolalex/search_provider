import 'package:flutter/material.dart';
import 'package:provide/provider.dart';
import 'package:provider/provider.dart';


class Horizantal extends StatefulWidget {
  const Horizantal({
    super.key,
  });

  @override
  State<Horizantal> createState() => _HorizantalState();
}

class _HorizantalState extends State<Horizantal> {
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
              Text(
                numbersProviderModel.numbers.last.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Container(
                height: 200,
                width: double.maxFinite,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbersProviderModel.numbers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      numbersProviderModel.numbers[index].toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
