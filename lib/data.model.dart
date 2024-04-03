
class DataModel {
  String title;
  String description;
  int submitted;
  String image;
  String userImage;
  String userName;

  DataModel({
    required this.description,
    required this.image,
    required this.submitted,
    required this.title,
    required this.userImage,
    required this.userName
  });
}

List<DataModel> data_list = [
  DataModel(
    description: "Heyhey.net - Free Download for Games & ApAnd Free Download for Games ...",
    image: "assets/images/image.png",
    submitted: 12,
    title: "3 Day Figma design Learn Challenge",
    userImage: "assets/images/user_image.jpeg",
    userName: "Jyoti Prasad"
  ),
  DataModel(
    description: "Heyhey.net - Free Download for Games & ApAnd Free Download for Games ...",
    image: "assets/images/image.png",
    submitted: 12,
    title: "3 Day Figma design Learn Challenge",
    userImage: "assets/images/user_image.jpeg",
    userName: "Jyoti Prasad"
  ),
  DataModel(
    description: "Heyhey.net - Free Download for Games & ApAnd Free Download for Games ...",
    image: "assets/images/image.png",
    submitted: 12,
    title: "3 Day Figma design Learn Challenge",
    userImage: "assets/images/user_image.jpeg",
    userName: "Jyoti Prasad"
  ),
];