class gadgets {
  final String name;
  final List<String> carouseList;
  final String descrption;
  final String img1;
  final String img2;

  const gadgets(
      {required this.name,
      required this.carouseList,
      required this.descrption,
      required this.img1,
      required this.img2});

  void addToMyList(String images) {
    carouseList.add(images);
  }
}
