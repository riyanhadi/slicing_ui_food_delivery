import 'package:flutter/material.dart';
import 'package:slicing_iu_fooddelivery/core.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../controller/order_track_controller.dart';

class OrderTrackView extends StatefulWidget {
  const OrderTrackView({Key? key}) : super(key: key);

  Widget build(context, OrderTrackController controller) {
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          "Order Track",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Container(
            width: 54.0,
            height: 54.0,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey[700],
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [],
      ),
      body: Column(
        children: [
          Builder(
            builder: (context) {
              List<Marker> allMarkers = [
                Marker(
                  point: LatLng(
                    -6.657580189547526,
                    111.04843232177986,
                  ),
                  builder: (context) => const CircleAvatar(
                    backgroundColor: Color(0xffff4f07),
                    child: Icon(
                      Icons.restaurant_menu,
                      color: Colors.white,
                    ),
                  ),
                ),
              ];
              return Expanded(
                child: FlutterMap(
                  options: MapOptions(
                    center: LatLng(-6.657580189547526, 111.04843232177986),
                    zoom: 16,
                    interactiveFlags:
                        InteractiveFlag.all - InteractiveFlag.rotate,
                  ),
                  layers: [
                    TileLayerOptions(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      // userAgent: 'dev.fleaflet.flutter_map.example',
                    ),
                    MarkerLayerOptions(markers: allMarkers),
                  ],
                ),
              );
            },
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://i.ibb.co/PGv8ZzG/me.jpg",
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Riyan Hadi Prabowo",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            "K 6895 NU",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: Color(0xffff4f07),
                      child: Icon(
                        Icons.forum_outlined,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const CircleAvatar(
                      backgroundColor: Color(0xffff4f07),
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 30,
                  thickness: 2.0,
                  color: Colors.grey[200],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xffff4f07).withOpacity(0.2),
                      child: const Icon(
                        Icons.circle,
                        color: Color(0xffff4f07),
                        size: 10,
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "On the way",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "25 Min",
                                style: TextStyle(
                                  color: Color(0xffff4f07),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            "Desa Pasucen RT 06 RW 03",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 42,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffff4f07),
            ),
            onPressed: () {},
            child: const Text("Order Received"),
          ),
        ),
      ),
    );
  }

  @override
  State<OrderTrackView> createState() => OrderTrackController();
}
