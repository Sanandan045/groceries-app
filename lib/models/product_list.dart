class Product {
  String name;
  String image;
  double price;
  

  Product({required this.name, required this.image, required this.price, });



 static  List<Product> products = [
    Product(
      name: "Orgenic Banana",
      image: "assets/images/banana.png",
      price: 19.99,
      // description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus auctor justo sed odio eleifend, eu varius sapien blandit.",
    ),
    Product(
      name: "Bell Paper Red",
      image: "assets/images/apple1.png",
      price: 29.99,
      // description: "Suspendisse potenti. Nulla facilisi. Quisque facilisis libero id risus consequat, eu lacinia mi dictum.",
    ),
    Product(
      name: "Egg Chicken Red",
      image: "assets/images/egg.png",
      price: 24.99,
      // description: "Pellentesque ac nisl in dui volutpat tempus. Sed aliquet ex eget feugiat. Nullam at hendrerit arcu.",
    ),
    Product(
      name: "Ginger",
      image: "assets/images/zinger.png",
      price: 14.99,
      // description: "Fusce in sapien ac purus feugiat auctor. Curabitur lacinia urna nec urna fermentum, a suscipit purus bibendum.",
    ),
    Product(
      name: "Coke ",
      image: "assets/images/coke.png",
      price: 39.99,
      // description: "Mauris venenatis bibendum lorem, id lacinia purus luctus sit amet. Integer id quam eget dolor vulputate congue.",
    ),
  ];
}


   


  // text: "Shop",textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),




  