class ReviewList {
  int foodtruck_id;
  int foodtruck_imgid;
  String truck_name;
  double distance;
  double rating;

  ReviewList({
    required this.foodtruck_id,
    required this.foodtruck_imgid,
    required this.truck_name,
    required this.distance,
    required this.rating,
  });
  @override
  String toString() {
    return 'ID: $foodtruck_id, ImgID: $foodtruck_imgid, Name: $truck_name, Distance: $distance, Rating: $rating';
  }
}

List<ReviewList> reviews = [
  ReviewList(
    foodtruck_id: 1,
    foodtruck_imgid: 1,
    truck_name: "test1",
    distance: 1.1,
    rating: 1.1,
  ),
  ReviewList(
    foodtruck_id: 2,
    foodtruck_imgid: 2,
    truck_name: "test2",
    distance: 2.2,
    rating: 2.2,
  ),
  ReviewList(
    foodtruck_id: 3,
    foodtruck_imgid: 3,
    truck_name: "test3",
    distance: 3.3,
    rating: 3.3,
  ),
  ReviewList(
    foodtruck_id: 4,
    foodtruck_imgid: 4,
    truck_name: "test4",
    distance: 4.4,
    rating: 4.4,
  ),
  ReviewList(
    foodtruck_id: 5,
    foodtruck_imgid: 5,
    truck_name: "test5",
    distance: 5.5,
    rating: 5.5,
  ),
];
