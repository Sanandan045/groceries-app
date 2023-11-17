import 'package:flutter/material.dart';
import 'package:grocrry/views/bevrages.dart';


class BEVList extends StatefulWidget {
  const BEVList({super.key});

  @override
  State<BEVList> createState() => _BEVListState();
}

class _BEVListState extends State<BEVList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(  itemCount: 2,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10,), itemBuilder: (context,index){return BeveragesPage();}),
      ),
    );
  }
}