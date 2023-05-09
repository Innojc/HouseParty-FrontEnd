
class Product {
  final int id;
  final String title, description;
  final List<String> images;
  //final List<Color> colors;
  final double rating;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    //required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.description,
  });

  static dart() {}
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
      images: [
      "assets/images/img_4.png",
     /* "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",*/
    ],
   /* colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],*/
    //Also made changes in color_dots.dart
    title: "Hotel Ramen",
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/img_3.png",
    ],
    /*colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],*/
    title: "Mehfil Restaurant",
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/img_6.png",
    ],
    /* colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],*/
    title: "The Pista House",
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/img_7.png",
    ],
    /* colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],*/
    title: "ShahGhouse Hotel & Restaurant",
    description: description,
    rating: 4.7,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/img_9.png",
    ],
     /*colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],*/
    title: "Lucky Multicuisine",
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/img_11.png",
    ],
    /* colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],*/
    title: "Biryani Wala",
    description: description,
    rating: 4.0,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 7,
    images: [
      "assets/images/img_12.png",
    ],
     /*colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],*/
    title: "KFC",
    description: description,
    rating: 5.0,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 8,
    images: [
      "assets/images/img_13.png",
    ],
    /* colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],*/
    title: "Rice Bowl",
    description: description,
    rating: 4.7,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 9,
    images: [
      "assets/images/img_14.png",
    ],
     /*colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],*/
    title: "Fishland Express",
    description: description,
    rating: 4.0,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 10,
    images: [
      "assets/images/img_15.png",
    ],
    /* colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],*/
    title: "Green Bawarchi Restaurant",
    description: description,
    rating: 3.9,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 11,
    images: [
      "assets/images/img_16.png",
    ],
    /* colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],*/
    title: "Hyderabad Chefs",
    description: description,
    rating: 4.9,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 12,
    images: [
      "assets/images/img_17.png",
    ],
    /* colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],*/
    title: "Cake Zone",
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),

];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
