import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  final _locationList = ["A", "B","C"];
  String? _selectedVal = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        shadowColor: Colors.green.shade300,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(children: [
        Center(
            child: Image.asset(
          "assets/images/locationim.png",
          width: 250,
          height: 250,
        )),
        Text(
          "Select Your Location",
          style: TextStyle(
              color: Color(0xFF181725),
              fontSize: 25,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Swithch on your location to stay in tune with\n what’s happening in your area\n",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFF7C7C7C),
              fontSize: 15,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 30,
        ),
        DropdownButton(
          value: _selectedVal,
            items: _locationList.map((e) {
              return DropdownMenuItem(
                child: Text(e),
                value: e,
              );
            }).toList(),
            onChanged: (val) {})
      ]),
    );
  }
}
