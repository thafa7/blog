import 'package:vania/vania.dart';

class CreateProductnotesTable extends Migration {

  @override
  Future<void> up() async{
   super.up();
   await createTableNotExists('productnotes', () {
      char("note_id", length: 5); primary("note_id");
      char("prod_id", length: 10); foreign("prod_id", "product", "prod_id");
      date("note_date");
      text("note_text");
    });
  }
  
  @override
  Future<void> down() async {
    super.down();
    await dropIfExists('productnotes');
  }
}
