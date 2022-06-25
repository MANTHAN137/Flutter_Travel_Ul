class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    name: '5star+',
    address: '404 Manthanedra',
    price: 1705,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: '7star+',
    address: '504 Kashapedra',
    price: 3050,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel3.jpg',
    name: 'OYO',
    address: '204 Tushapura',
    price: 2450,
  ),
];
