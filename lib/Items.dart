import 'package:e_commerce/Categories.dart';
class Items  {

  String ?categoryname;
  String ?itemname;
  String ? description;
  String? size;
  double? rating;
  double? price;
  Items({this.categoryname,this.itemname,this.description,this.size,this.price,this.rating
});
@override
  String toString() {

    return 'The category name is:${this.categoryname}..'+'The product name:${this.itemname},Description:${this.description},Price:${this.price},Size:${this.size}   ';
  }

}