class Resto{
  dynamic images;
  String hotelname;
  String cont1;
  String cont2;
  String cont3;
  String Address;
  String Star;
  String tym;
  String soff;
  dynamic slogo;

  Resto({
    required this.images,required this.hotelname,required this.cont1,required this.cont2,required this.cont3,required this.Address,required this.Star, required this.tym,required this.slogo,required this.soff,
  });
}



 List Resolist=[
  Resto(images:"assets/images/non-veg.png", hotelname: 'Fire Wings', cont1: 'Burger', cont2: 'Pizza', cont3: 'Wings', Address: 'Near Hafiz Baba Dargah', Star:'4.3', tym:'30 mins  •  ₹230 for two' , slogo: "assets/images/non-veg.png", soff: 'upto 15% OFF'),
  Resto(Address: 'Near Hafiz Baba Dargah', soff: 'upto 5% OFF', slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: 'Bhiwandi Darbar', images:"assets/images/resto1a.png" , tym: '30 mins  •  ₹230 for two',),
  ];