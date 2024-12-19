import 'package:vania/vania.dart';

class CreateCostumersTable extends Migration {

  @override
  Future<void> up() async{
   super.up();
   await createTableNotExists('costumers', () {
        char("cust_id", length: 5); primary("cust_id"); 
        string("cust_name", length: 50);
        string("cust_city", length: 20);
        string("cust_address", length: 50);
        string("cust_state", length: 5);
        string("cust_zip", length: 7);
        string("cust_country", length: 25);
        string("cust_telp", length: 15);
        foreign('cust_id', 'orders', 'cust_id', constrained: true, onUpdate: 'RESTRICT', onDelete: 'RESTRICT'); 
    });
  }
  
  @override
  Future<void> down() async {
    super.down();
    await dropIfExists('costumers');
  }
}

        