import 'package:flutter/material.dart';
import 'package:slicing_iu_fooddelivery/state_util.dart';
import '../view/order_track_view.dart';

class OrderTrackController extends State<OrderTrackView> implements MvcController {
  static late OrderTrackController instance;
  late OrderTrackView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}