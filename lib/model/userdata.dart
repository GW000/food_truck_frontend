class UserList {
  int userDocID;
  String user_email;
  String user_img;
  String user_name;
  bool user_type;
  List favorite_truckid;
  List review_create_truckid;

  UserList({
    required this.userDocID,
    required this.user_email,
    required this.user_img,
    required this.user_name,
    required this.user_type,
    required this.favorite_truckid,
    required this.review_create_truckid,
  });
  String toString() {
    return 'ID: $userDocID, Email: $user_email, ImgURL: $user_img, Name: $user_name UserType: $user_type, WishList: $favorite_truckid, ReviewList: $review_create_truckid';
  }
}

List<UserList> users = [
  UserList(
      userDocID: 1,
      user_email: "user_1@gmail.com",
      user_img: "1_imgURI",
      user_name: "test1",
      user_type: true,
      favorite_truckid: [1, 5],
      review_create_truckid: [2, 4]),
  UserList(
      userDocID: 2,
      user_email: "user_2@gmail.com",
      user_img: "2_imgURI",
      user_name: "test2",
      user_type: true,
      favorite_truckid: [2, 4],
      review_create_truckid: [3, 1]),
];
