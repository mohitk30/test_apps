class CatalogModel{
     
     static List<Item> items=[];
    //  =[
    //       Item(
    //         id:"1", 
    //         color: '#33505a', 
    //         desc: 'Brand New MI Trimer', 
    //         imageLink: 'https://m.media-amazon.com/images/I/61ApUe3q-PL._AC_AA180_.jpg', 
    //         name: 'MI Trimer', 
    //         price: 999,
    //       ),
         
    //     ];

}
class Item{
     final String id;
     final String name;
     final String desc; 
     final num price;
     final String color;
     final String imageLink;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.imageLink}  );
  
  factory Item.fromMap(Map<String,dynamic> map){
    return  Item(
      id:map["id"],
      name:map["name"],
      desc:map["desc"],
      price:map["price"], 
      color:map["color"],
      imageLink:map["imageLink"],
    );
  }

  toMap()=>{
     "id":id,
     "name":name,
     "desc":desc,
     "price":price,
     "color":color,
     "imageLink":imageLink

  };

}
