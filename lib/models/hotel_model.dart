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
    imageUrl: 'assets/images/hotels/hotel1.jpg',
    name: 'Hotel 1',
    address: '404 Manthanedra',
    price: 1705,
  ),
  Hotel(
    imageUrl: 'assets/images/hotels/hotel2.jpg',
    name: 'Hotel 2',
    address: '504 Kashapedra',
    price: 3050,
  ),
  Hotel(
    imageUrl: 'assets/images/hotels/hotel3.jpg',
    name: 'Hotel 3',
    address: '204 Tushapura',
    price: 2450,
  ),
];
