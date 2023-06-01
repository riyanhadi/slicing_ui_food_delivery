import 'package:flutter/material.dart';
import 'package:slicing_iu_fooddelivery/core.dart';

class ProductDetailView extends StatefulWidget {
  final Map item;
  const ProductDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  Widget build(context, ProductDetailController controller) {
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const BackButton(
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                size: 24.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 280.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    item["photo"],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item["product_name"],
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              item["category"],
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          controller.decrement();
                        },
                        icon: const Icon(
                          Icons.remove,
                          size: 20.0,
                        ),
                      ),
                      Text(
                        "${controller.qty}",
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      IconButton(
                        onPressed: () => controller.increment(),
                        icon: const Icon(
                          Icons.add,
                          size: 20.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Size",
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.grey[700]),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              item["item_size"],
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          width: 1.0,
                          height: 30.0,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Calories",
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.grey[700]),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              item["calories"],
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          width: 1.0,
                          height: 30.0,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cooking",
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.grey[700]),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              item["cooking"],
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    item["description"],
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Text(
              "\$${item["price"]}.00",
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffff4f07),
              ),
            ),
            const SizedBox(
              width: 50.0,
            ),
            Expanded(
              child: SizedBox(
                height: 42,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffff4f07),
                  ),
                  onPressed: () => Get.to(const OrderTrackView()),
                  child: const Text("Checkout"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProductDetailView> createState() => ProductDetailController();
}
