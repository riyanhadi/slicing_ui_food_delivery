import 'package:flutter/material.dart';
import 'package:slicing_iu_fooddelivery/state_util.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView>
    implements MvcController {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  var scaffoldKey = GlobalKey<ScaffoldState>();

  List categories = [
    {
      "icon": Icons.lunch_dining,
      "label": "Burger",
      "value": "Burger",
    },
    {
      "icon": Icons.local_pizza,
      "label": "Taco",
      "value": "Taco",
    },
    {
      "icon": Icons.kebab_dining,
      "label": "Chicken",
      "value": "Chicken",
    },
    {
      "icon": Icons.sports_bar,
      "label": "Drink",
      "value": "Drink",
    }
  ];

  List products = [
    {
      "id": 1,
      "photo":
          "https://i.ibb.co/dG68KJM/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "product_name": "Frenzy Pizza",
      "price": 25,
      "category": "Food",
      "description":
          "Nikmati sensasi lezat dengan Frenzy Pizza, hidangan pizza yang penuh dengan topping beragam. Ukuran medium dengan kelezatan yang pas untuk dinikmati bersama teman dan keluarga. Hanya dengan 120 Kcal, pizza ini merupakan pilihan yang tepat untuk mengisi perut Anda. Waktu memasak sekitar 8 menit.",
      "item_size": "Medium",
      "calories": "120 Kcal",
      "cooking": "8 Min"
    },
    {
      "id": 2,
      "photo":
          "https://i.ibb.co/mHtmhmP/photo-1521305916504-4a1121188589-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "product_name": "Beef Burger",
      "price": 22,
      "category": "Food",
      "description":
          "Nikmati sajian lezat dan bergizi dengan Beef Burger. Burger dengan patty sapi yang juicy dan topping yang menggugah selera. Ukuran large untuk kepuasan makan yang lebih. Setiap porsi menyediakan sekitar 135 Kcal yang cocok untuk hidangan sehari-hari. Waktu memasak sekitar 7 menit.",
      "item_size": "Large",
      "calories": "135 Kcal",
      "cooking": "7 Min"
    },
    {
      "id": 3,
      "photo":
          "https://images.unsplash.com/photo-1625869016774-3a92be2ae2cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "product_name": "Seperait",
      "price": 33,
      "category": "Drink",
      "description":
          "Rasakan kesegaran dengan Seperait, minuman yang menyegarkan dengan sentuhan rasa unik. Ukuran small yang pas untuk menemani momen santai Anda. Minuman ini memiliki sekitar 105 Kcal, menjadikannya pilihan yang ringan dan menyegarkan. Waktu memasak tidak diperlukan.",
      "item_size": "Small",
      "calories": "105 Kcal",
      "cooking": "8 Min"
    },
    {
      "id": 4,
      "photo":
          "https://images.unsplash.com/photo-1578160112054-954a67602b88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
      "product_name": "Fried Rice",
      "price": 31,
      "category": "Food",
      "description":
          "Nikmati hidangan nasi goreng yang lezat dengan Fried Rice. Nasi goreng dengan bumbu yang khas dan pilihan bahan berkualitas. Ukuran medium untuk kepuasan makan yang pas. Dengan sekitar 210 Kcal per porsi, hidangan ini cocok untuk dinikmati kapan pun. Waktu memasak sekitar 15 menit.",
      "item_size": "Medium",
      "calories": "210 Kcal",
      "cooking": "15 Min"
    },
    {
      "id": 13,
      "photo":
          "https://images.unsplash.com/photo-1578160112054-954a67602b88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format",
      "product_name": "Spicy Fried Rice",
      "price": 29,
      "category": "Food",
      "description":
          "Nikmati sensasi pedas dengan Spicy Fried Rice, nasi goreng yang menggugah selera dengan campuran bumbu khas. Ukuran medium yang pas untuk hidangan lauk tunggal. Hidangan ini memiliki sekitar 140 Kcal dan membutuhkan waktu memasak sekitar 10 menit.",
      "item_size": "Medium",
      "calories": "140 Kcal",
      "cooking": "10 Min"
    },
    {
      "id": 14,
      "photo":
          "https://images.unsplash.com/photo-1576092768241-dec231879fc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format",
      "product_name": "Iced Matcha Latte",
      "price": 18,
      "category": "Drink",
      "description":
          "Nikmati kelezatan dan khasiat Matcha Latte yang disajikan dingin. Minuman yang lezat dan menyegarkan dengan sentuhan matcha yang lembut. Ukuran large yang cocok untuk memuaskan dahaga Anda. Minuman ini memiliki sekitar 125 Kcal dan siap dinikmati tanpa perlu waktu memasak.",
      "item_size": "Large",
      "calories": "125 Kcal",
      "cooking": "12 Min"
    },
    {
      "id": 15,
      "photo":
          "https://images.unsplash.com/photo-1604085792782-8d92f276d7d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format",
      "product_name": "Refreshing Avocado Smoothie",
      "price": 27,
      "category": "Drink",
      "description":
          "Nikmati kelezatan dan manfaat alpukat dengan Refreshing Avocado Smoothie. Minuman segar dengan paduan alpukat yang lembut dan rasa yang nikmat. Ukuran small yang pas untuk dinikmati di segala kesempatan. Minuman ini memiliki sekitar 110 Kcal dan tidak memerlukan waktu memasak.",
      "item_size": "Small",
      "calories": "110 Kcal",
      "cooking": "10 Min"
    },
    {
      "id": 16,
      "photo":
          "https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format",
      "product_name": "Chicken Teriyaki Bowl",
      "price": 32,
      "category": "Food",
      "description":
          "Nikmati hidangan lezat dan bergizi dengan Chicken Teriyaki Bowl. Hidangan dengan potongan ayam yang disajikan dengan saus teriyaki yang gurih. Ukuran medium yang cocok untuk makan siang atau makan malam. Hidangan ini memiliki sekitar 160 Kcal dan membutuhkan waktu memasak sekitar 12 menit.",
      "item_size": "Medium",
      "calories": "160 Kcal",
      "cooking": "12 Min"
    }
  ];
}
