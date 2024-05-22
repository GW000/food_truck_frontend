class FoodtruckList {
  int foodtruck_id;
  int foodtruck_imgid;
  String truck_name;
  String description;
  DateTime timestamp;
  List<String> weekday;
  String address;
  double distance;
  double rating;

  FoodtruckList({
    required this.foodtruck_id,
    required this.foodtruck_imgid,
    required this.truck_name,
    required this.description,
    required this.timestamp,
    required this.weekday,
    required this.address,
    required this.distance,
    required this.rating,
  });
  @override
  String toString() {
    return 'ID: $foodtruck_id, ImgID: $foodtruck_imgid, Name: $truck_name Description: $description, Timestamp: $timestamp, Weekday: $weekday, Address: $address, Distance: $distance, Rating: $rating';
  }
}

List<FoodtruckList> foodtrucks = [
  FoodtruckList(
    foodtruck_id: 1,
    foodtruck_imgid: 1,
    truck_name: "test1",
    description: "설명1",
    timestamp: DateTime.now(),
    weekday: ["월", "수"],
    address: "주소1",
    distance: 1.1,
    rating: 1.1,
  ),
  FoodtruckList(
    foodtruck_id: 2,
    foodtruck_imgid: 2,
    truck_name: "test2",
    description: "설명2",
    timestamp: DateTime.now(),
    weekday: ["월", "목"],
    address: "주소2",
    distance: 2.2,
    rating: 2.2,
  ),
  FoodtruckList(
    foodtruck_id: 3,
    foodtruck_imgid: 3,
    truck_name: "test3",
    description: "설명3",
    timestamp: DateTime.now(),
    weekday: ["월", "금"],
    address: "주소3",
    distance: 3.3,
    rating: 3.3,
  ),
  FoodtruckList(
    foodtruck_id: 4,
    foodtruck_imgid: 4,
    truck_name: "test4",
    description: "설명4",
    timestamp: DateTime.now(),
    weekday: ["월", "토"],
    address: "주소4",
    distance: 4.4,
    rating: 4.4,
  ),
  FoodtruckList(
    foodtruck_id: 5,
    foodtruck_imgid: 5,
    truck_name: "test5",
    description: "설명5",
    timestamp: DateTime.now(),
    weekday: ["월", "일"],
    address: "주소5",
    distance: 5.5,
    rating: 5.5,
  ),
];
