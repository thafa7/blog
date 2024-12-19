import 'package:vania/vania.dart';

class CreateProductTable extends Migration {

  @override
  Future<void> up() async{
   super.up();
   await createTableNotExists('product', () {
    string("prod_id", length: 10); primary("prod_id");
    char("vend_id", length: 5);
    string("prod_name", length: 25);
    integer("prod_price", length: 11);
    text("prod_desc");
    index(ColumnIndex.indexKey, "vend_id", ["vend_id"]);
    index(ColumnIndex.indexKey, 'pro_id', ['pro_id']);
    });
  }
  
  @override
  Future<void> down() async {
    super.down();
    await dropIfExists('product');
  }
}
