import 'package:vania/vania.dart';

class CreateOrdersTable extends Migration {

  @override
  Future<void> up() async{
   super.up();
   await createTableNotExists('orders', () {
     integer("order_num", length: 11); primary("order_num");
     date("order_date"); 
     char("cust_id", length: 5);
     index(ColumnIndex.indexKey, 'order_num', ['order_num']);
     index(ColumnIndex.indexKey, 'cust_id', ['cust_id']);
    });
  }
  
  @override
  Future<void> down() async {
    super.down();
    await dropIfExists('orders');
  }
}
