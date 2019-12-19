import 'package:meta/meta.dart';


FoodItemList foodItemList = FoodItemList(foodItems:[
    FoodItem(
      id: 1,
      title: "Chicken Bucket",
      hotel: "KFC BUKOTO",
      price: 14.39,
      imgUrl: "https://i2-prod.mirror.co.uk/incoming/article16538157.ece/ALTERNATES/s810/0_30HW.jpg"
    ),
    FoodItem(
      id: 2,
      title: "Pepsi and chicken",
      hotel: "Chillies",
      price: 20.99,
      imgUrl: "https://5.imimg.com/data5/SF/RS/MY-54431334/db-grilled-chicken-burger-french-fries-pepsi-2fcoke-500x500.png"
    ),
    FoodItem(
      id: 3,
      title: "Chicken Buger",
      hotel: "The lunchBox.com",
      price: 19.50,
      imgUrl: "https://5.imimg.com/data5/SF/RS/MY-54431334/db-grilled-chicken-burger-french-fries-pepsi-2fcoke-500x500.png"
    ),
    FoodItem(
      id: 4,
      title: "Luwombo",
      hotel: "St Anthony's resturant",
      price: 13.99,
      imgUrl: "https://www.howwebiz.ug/uploads/articles/image_640/thumbnail_640_420/howwe_96f2154eb91ca94b30430fadffc76ebc_1464589248.jpg"
    ),
    FoodItem(
      id: 5,
      title: "Chapati and beans",
      hotel: "Chicken 2 Night",
      price: 14.39,
      imgUrl: "https://www.mobilemunchies.co.ke/wp-content/uploads/2018/04/chapati-and-beans.jpg"
    ),
    FoodItem(
      id: 6,
      title: "Pizza",
      hotel: "Pizza hut",
      price: 14.39,
      imgUrl: "https://www.kingarthurflour.com/sites/default/files/styles/featured_image/public/recipe_legacy/20-3-large.jpg?itok=1EY8KWJG"
    ),
    FoodItem(
      id: 7,
      title: "Grilled drumstricks",
      hotel: "Chillies bukoto",
      price: 14.39,
      imgUrl: "https://5.imimg.com/data5/SF/RS/MY-54431334/db-grilled-chicken-burger-french-fries-pepsi-2fcoke-500x500.png"
    ),
]);

class FoodItemList{
  List<FoodItem> foodItems;

  FoodItemList({@required this.foodItems});
}

class FoodItem{
  int id;
  String title;
  String hotel;
  String imgUrl;
  double price;
  int quantity;

  FoodItem({
    @required this.id,
    @required this.hotel,
    @required this.imgUrl,
    @required this.price,
    @required this.title,

    this.quantity=1,
  });

  void incrementQuantity(){
    this.quantity = this.quantity+1;
  }

  void decrementQuantity(){
    this.quantity = this.quantity-1;
  }

}