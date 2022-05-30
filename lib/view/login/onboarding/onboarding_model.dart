class IntroModel {
  String? image;
  String? title;
  String? discription;
  IntroModel({this.image, this.title, this.discription});
}

List<IntroModel> contents = [
  IntroModel(
    title: 'FRESH',
    image: 'lib/assets/images/freshicon.png',
    discription: 'Discover dishes everyday and hold your favourite restaurant',
  ),
  IntroModel(
    title: 'SEARCH',
    image: 'lib/assets/images/location.png',
    discription: 'View menus, photos and reviews for restaurants around you',
  ),
  IntroModel(
    title: 'BOOKMARK',
    image: 'lib/assets/images/bookmarkicon.png',
    discription: 'Add places you want to visit in the future to your bookmark',
  )
];
