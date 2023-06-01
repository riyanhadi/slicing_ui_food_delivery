import 'package:flutter/material.dart';
import 'package:slicing_iu_fooddelivery/state_util.dart';
import '../view/product_detail_view.dart';

class ProductDetailController extends State<ProductDetailView>
    implements MvcController {
  static late ProductDetailController instance;
  late ProductDetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int qty = 0;

  void increment() {
    setState(() {
      qty = qty + 1;
    });
  }

  void decrement() {
    setState(() {
      if (qty > 0) {
        qty = qty - 1;
      }
    });
  }
}
