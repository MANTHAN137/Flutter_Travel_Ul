import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fun_app/models/destination_model.dart';


class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              "Top Destinations",
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.3),
            ),
            GestureDetector(
              onTap: () => print("hello"),
              child: Text(
                "See All",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
        const SizedBox(height: 20,)
        ,
        Container(
          height: 300.0,
  
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              Destination destination = destinations[index];
              return Container(
                width: 210,
                child: Stack(
                  alignment: Alignment.topCenter
                
,
                  children:<Widget> [
                  Positioned(
                    bottom: 15.0,
                    child: Container(
                      height: 120,
                      width: 200,
                                   
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[Text('${destination.activities.length}activities',
                            style :const TextStyle(
                              fontSize: 22.0,
                              fontWeight
                              :FontWeight.w600
                            ),
                            ),
                            Text(destination.description,
                            style: const TextStyle(
                              color: Colors.grey
                            ),
                            )
                            ]),
                      ),
                    ),
                  ),
                  Container(
                  decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow:const [
                    BoxShadow(
                      color:Colors.black26,
                      offset: Offset(0.0,2.0),
                      blurRadius: 6.0

                    ),
                  ]  
                  
                ),
                child: Stack(
                  children: <Widget>[

                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        height: 180,
                        width: 180,
                        image: AssetImage(destination.imageUrl),
                        fit: BoxFit.cover,
                      
                      ),
                    ),
                    Positioned(
                      left: 10.0,
                      bottom: 10.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(destination.city,
                          style:const  TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2
                          ),),
                          Row(
                            children: [
                              const
                              Icon(FontAwesomeIcons.locationArrow
                              
                              ,
                              color: Colors.black,),
                              Text(destination.state,
                              style: const TextStyle(color: Colors.white,),
                              ),
                            ],
                          )
                    
                        ],
                      ),
                    )
                  ],
                ),
                  )
                ]),
              );
            },
          ),
        )
      ],
    );
  }
}
