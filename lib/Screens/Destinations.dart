
import 'package:flutter/material.dart';
import 'package:fun_app/models/destination_model.dart';



class DestinationScreen extends StatefulWidget {
  const DestinationScreen({ Key? key, required Destination destination }) : super(key: key);

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),

          )
        ],
      ),
    );
  }
}