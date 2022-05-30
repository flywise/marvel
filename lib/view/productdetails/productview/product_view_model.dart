class ProductViewModel {
  String image;
  String? title;
  String? discription;
  ProductViewModel({required this.image, this.title, this.discription});
}

List<ProductViewModel> productviewmodel = [
  ProductViewModel(
    title: 'FRESH',
    image: 'lib/assets/images/banner1.jpg',
    discription: 'Discover dishes everyday and hold your favourite restaurant',
  ),
  ProductViewModel(
    title: 'SEARCH',
    image: 'lib/assets/images/banner2.jpg',
    discription: 'View menus, photos and reviews for restaurants around you',
  ),
  ProductViewModel(
    title: 'BOOKMARK',
    image: 'lib/assets/images/burgur.jpg',
    discription: 'Add places you want to visit in the future to your bookmark',
  )
];
