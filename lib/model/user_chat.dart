import 'package:sameplay/add_game.dart';

class UserChat {
  String? image;
  String? title;
  String? description;
  String? time;

  UserChat(
      {required this.image, required this.title, this.description, this.time});
}

List<UserChat> chats = [
  UserChat(
      image: "assets/images/Ellipse.png",
      title: "Helen",
      description: "How are you",
      time: "11:41 am"),
  UserChat(
      image: "assets/images/Ellipse3.png",
      title: "Shasha",
      description: "Are u available?",
      time: "12:41 am"),
  UserChat(
      image: "assets/images/Ellipse.png",
      title: "john",
      description: "Hi!",
      time: "11:41 am"),
  UserChat(
      image: "assets/images/Ellipse3.png",
      title: "Ben where are u?",
      description: "Miss u message me back",
      time: "11:41 am"),
];
