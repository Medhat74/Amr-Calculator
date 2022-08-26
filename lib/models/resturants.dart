class Restaurant{
  String img;
  String name;
  int id ;

  Restaurant({required this.img,required this.name,required this.id});


}



List<Restaurant> restaurants =[
  Restaurant(
    name: 'ابو انس السوري',
    img:'assets/images/abo_anas.png',
    id: 1
  ),
  Restaurant(
      name: 'كشري هند',
      img:'assets/images/koshary_hind.png',
      id: 2
  ),
];