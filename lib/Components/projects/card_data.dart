class CardData {
  String projectScreen1;
  String projectScreen2;
  String projectScreen3;
  String projectDesc;
  String type;
  String? projectUrlApple;
  String? projectUrlGoogle;
  bool inDevelopment;
  String? webSite;

  CardData({
    required this.projectDesc,
    required this.type,
    required this.projectScreen1,
    required this.projectScreen2,
    required this.projectScreen3,
    this.projectUrlApple,
    this.projectUrlGoogle,
    this.inDevelopment = false,
    this.webSite,
  });
}
