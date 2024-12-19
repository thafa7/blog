import 'package:blog/app/http/controllers/customers_controller.dart';
import 'package:blog/app/http/controllers/orderitems_controller.dart';
import 'package:blog/app/http/controllers/orders_controller.dart';
import 'package:blog/app/http/controllers/product_controller.dart';
import 'package:blog/app/http/controllers/productnotes_controller.dart';
import 'package:blog/app/http/controllers/vendors_controller.dart';
import 'package:vania/vania.dart';


class ApiRoute implements Route {
  final ProductController productController = ProductController();
  final VendorsController vendorsController = VendorsController();
  final OrderitemsController orderitemsController = OrderitemsController();
  final OrdersController ordersController = OrdersController();
  final CustomersController customersController = CustomersController();
  final ProductnotesController productnotesController = ProductnotesController();

  @override
  void register() {
    Router.group(() {
      Router.get('/product', (Request request) => productController.index());
      Router.get('/product/{id}', (Request request, int id) => productController.show(id));
      Router.post('/product', (Request request) => productController.create(request));
      Router.put('/product/{id}', (Request request, int id) => productController.update(request, id));
      Router.delete('/product/{id}', (Request request, int id) => productController.destroy(id));
    }, prefix: 'm1');

    Router.group(() {
      Router.get('/vendors', (Request request) => vendorsController.index());
      Router.get('/vendors/{id}', (Request request, int id) => vendorsController.show(id));
      Router.post('/vendors', (Request request) => vendorsController.create(request));
      Router.put('/vendors/{id}', (Request request, int id) => vendorsController.update(request, id));
      Router.delete('/vendors/{id}', (Request request, int id) => vendorsController.destroy(id));
    }, prefix: 'm2');

    Router.group(() {
      Router.get('/productnotes', (Request request) => productnotesController.index());
      Router.get('/productnotes/{id}', (Request request, int id) => productnotesController.show(id));
      Router.post('/productnotes', (Request request) => productnotesController.create(request));
      Router.put('/productnotes/{id}', (Request request, int id) => productnotesController.update(request, id));
      Router.delete('/productnotes/{id}', (Request request, int id) => productnotesController.destroy(id));
    }, prefix: 'm3');

    Router.group(() {
      Router.get('/orders', (Request request) => ordersController.index());
      Router.get('/orders/{id}', (Request request, int id) => ordersController.show(id));
      Router.post('/orders', (Request request) => ordersController.create(request));
      Router.put('/orders/{id}', (Request request, int id) => ordersController.update(request, id));
      Router.delete('/orders/{id}', (Request request, int id) => ordersController.destroy(id));
    }, prefix: 'm4');

    Router.group(() {
      Router.get('/orderitems', (Request request) => orderitemsController.index());
      Router.get('/orderitems/{id}', (Request request, int id) => orderitemsController.show(id));
      Router.post('/orderitems', (Request request) => orderitemsController.create(request));
      Router.put('/orderitems/{id}', (Request request, int id) => orderitemsController.update(request, id));
      Router.delete('/orderitems/{id}', (Request request, int id) => orderitemsController.destroy(id));
    }, prefix: 'm5');

    Router.group(() {
      Router.get('/customers', (Request request) => customersController.index());
      Router.get('/customers/{id}', (Request request, int id) => customersController.show(id));
      Router.post('/customers', (Request request) => customersController.create(request));
      Router.put('/customers/{id}', (Request request, int id) => customersController.update(request, id));
      Router.delete('/customers/{id}', (Request request, int id) => customersController.destroy(id));
    }, prefix: 'm6');
  }
}
