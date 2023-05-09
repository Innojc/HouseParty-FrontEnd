import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Cart_providers/cartProvider.dart';

// ignore: camel_case_types
class cartPage extends StatefulWidget {
  static var routeName = "/Cart_cartpage";

  const cartPage({Key? key}) : super(key: key);

  @override
  State<cartPage> createState() => _cartPageState();
}

// ignore: camel_case_types
class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      const SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.all(40),
                    alignment: Alignment.centerLeft,
                    child: const Text.rich(
                      TextSpan(
                        text: "Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 5),
                      ),
                    ),
                  ),
                  Column(
                    children: Provider.of<CartProvider>(context).cartList.map(
                      (e) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 20),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 40),
                              alignment: Alignment.center,
                              width: width * 0.65,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color: Colors.grey, blurRadius: 3),
                                ],
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      e.name.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "\n ${e.rating} ",
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "${e.weight} g",
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        "${e.price} Rs.",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.deepOrangeAccent,
                                            fontSize: 21),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 100,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              // margin:
                              // const EdgeInsets.symmetric(vertical: 20),
                              // padding:
                              // const EdgeInsets.symmetric(vertical: 20),
                              width: (width * 0.65) + 70,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: Colors.transparent,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(e.image),
                                        backgroundColor: Colors.transparent,
                                        radius: 35,
                                      ),
                                      FloatingActionButton(
                                        heroTag: null,
                                        backgroundColor: Colors.green,
                                        onPressed: () {
                                          // e.selecteditem = quantityList[
                                          // res.items.indexOf(e)];
                                          Provider.of<CartProvider>(context,
                                                  listen: false)
                                              .removeFromCart(items: e);
                                          // Navigator.of(context).pop();
                                        },
                                        child: const Icon(
                                          Icons.remove_shopping_cart,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 100,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(25),
                                          ),
                                          color: Colors.deepOrangeAccent),
                                      height: 60,
                                      width: 175,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                if (e.selectedItem > 0) {
                                                  setState(() {
                                                    e.selectedItem--;
                                                    Provider.of<CartProvider>(
                                                            context,
                                                            listen: false)
                                                        .changeSelectedItem(
                                                            item: e,
                                                            i: e.selectedItem);
                                                  });
                                                }
                                              },
                                              icon: const Icon(Icons.remove)),
                                          Text(
                                            "${e.selectedItem}",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20),
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  // print(quantityList[
                                                  //     res.items.indexOf(e)]);
                                                  // Provider.of<CartProvider>(context,listen: false).removeFromCart(items: e);
                                                  e.selectedItem++;

                                                  Provider.of<CartProvider>(
                                                          context,
                                                          listen: false)
                                                      .changeSelectedItem(
                                                          item: e,
                                                          i: e.selectedItem);

                                                  // quantityList[
                                                  // res.items.indexOf(e)]++;
                                                  // print(quantityList[
                                                  //     res.items.indexOf(e)]);
                                                });
                                              },
                                              icon: const Icon(Icons.add)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ).toList(),
                  ),
                  Container(
                      margin: const EdgeInsets.all(25),
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(25),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.6),
                              blurRadius: 2,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Total Items - ${Provider.of<CartProvider>(context).totalProduct}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text(
                            "Total Bill Amounts - ${Provider.of<CartProvider>(context).totalPrice}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
