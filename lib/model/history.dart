import 'package:sameplay/add_game.dart';

class ADDHistory {
  String? image;
  String? title;
  String? date;
  bool? result;

  ADDHistory(
      {required this.image,
      required this.title,
      required this.date,
      required this.result});
}

List<ADDHistory> AddHistoryData = [
  ADDHistory(
    image: "assets/images/hero.png",
    title: "Hero Wars",
    date: "12-08-2022",
    result: true,
  ),
  ADDHistory(
    image: "assets/images/war.png",
    title: "God of war",
    date: "12-08-2022",
    result: false,
  ),
  ADDHistory(
    image: "assets/images/clash.png",
    title: "Subway surfers",
    date: "12-08-2022",
    result: false,
  ),
  ADDHistory(
    image: "assets/images/vector.png",
    title: "Subway surfers",
    date: "12-08-2022",
    result: true,
  )
];
