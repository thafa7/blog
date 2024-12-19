import 'package:vania/vania.dart';

class CreateOrderitemsTable extends Migration {

  @override
  Future<void> up() async{
   super.up();
   await createTableNotExists('orderitems', () {
      integer("order_item", length: 11); primary("order_item");
      integer('order_num', length: 11);
      string('pro_id', length: 10);
      integer('quantity', length: 11);
      integer('size', length: 11);
      integer("order_num", length: 11); foreign("prod_id", "product", "prod_id", constrained: true, onUpdate: "RESTRICT", onDelete: "RESTRICT");
    });
  }
  
  @override
  Future<void> down() async {
    super.down();
    await dropIfExists('orderitems');
  }
}
