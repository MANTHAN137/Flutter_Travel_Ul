import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fun_app/Widgets/DestinationWidget.dart';
import 'package:fun_app/Widgets/HotelWidget.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking
  ];
  int _selectedIndex = 1;
  Widget _buildIcon(int index) {
    
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).backgroundColor
                : Color.fromARGB(255, 14, 170, 146),
            borderRadius: BorderRadius.circular(30.0)),
        child: Icon(_icons[index],
            size: 27.0,
            color: _selectedIndex == index
                ? Theme.of(context).primaryColor
                : Color.fromARGB(255, 214, 225, 228)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 120.0),
            child: Text(
              "What would you like to find?",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList()),
          const SizedBox(height: 20),
            DestinationCarousel(),
            HotelCarousel()
        ],
      )),
    );
  }
}
