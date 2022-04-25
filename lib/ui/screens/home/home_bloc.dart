import 'package:cocorosbills/domain/categories_bills.dart';
import 'package:flutter/widgets.dart';

class HomeBloC extends ChangeNotifier {
  final List<BillCategory> categories = [
    BillCategory(
      name: 'Mercado',
      image: 'assets/images/market.jpg',
    ),
    BillCategory(
      name: 'Servicios',
      image: 'assets/images/services.jpg',
    ),
    BillCategory(
      name: 'Shopping',
      image: 'assets/images/sale.jpg',
    ),
    BillCategory(
      name: 'Otros',
      image: 'assets/images/restaurant.jpg',
    ),
  ];
}
