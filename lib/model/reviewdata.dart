class ReviewList {
  DateTime review_create_date;
  int user_uid;
  String user_name;
  String user_img;
  String review_context;
  double rating;

  ReviewList({
    required this.review_create_date,
    required this.user_uid,
    required this.user_name,
    required this.user_img,
    required this.review_context,
    required this.rating,
  });
  @override
  String toString() {
    return 'Date: $review_create_date, UserId: $user_uid, ImgURL: $user_img, Name: $user_name, Context: $review_context, Rating: $rating';
  }
}

List<ReviewList> reviews = [
  ReviewList(
    review_create_date: DateTime.now(),
    user_uid: 1,
    user_img: "test1_URL",
    user_name: "test1",
    review_context: "리뷰내용Text1",
    rating: 1.1,
  ),
  ReviewList(
    review_create_date: DateTime.now(),
    user_uid: 2,
    user_img: "test2_URL",
    user_name: "test2",
    review_context: "리뷰내용Text2",
    rating: 2.2,
  ),
];
