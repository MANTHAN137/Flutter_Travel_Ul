import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String state;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.state,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/locations/mall.jpg',
    name: 'Phinex Mall',
    type: 'Shopping and mall tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 35,
  ),
  Activity(
    imageUrl: 'assets/images/locations/temple.jpg',
    name: 'Temple',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 360,
  ),
  Activity(
    imageUrl: 'assets/images/locations/waterfall.jpg',
    name: 'Jog fall',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/locations/skydiving.jpg',
    name: 'Sky-Diving',
    type: 'Sky Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 5,
    price: 1000,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/goa.jpg',
    city: 'Goa',
    state: 'Goa',
    description: 'Visit goa for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/mumbai.jpg',
    city: 'Mumbai',
    state:'Maharashtra',
    description: 'Visit Mumbai for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/delhi.jpg',
    city: 'New Delhi',
    state: 'Dehli',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/kolkata.jpg',
    city: 'Kolkata',
    state: 'Bengal',
    description: 'Visit Kolkata for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/shimla.jpg',
    city: 'shimla',
    state: 'Himachal',
    description: 'Visit Himachal for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/bangalore.jpg',
    city: 'Bangalore',
    state: 'Karnataka',
    description: 'Visit Bangalore for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
