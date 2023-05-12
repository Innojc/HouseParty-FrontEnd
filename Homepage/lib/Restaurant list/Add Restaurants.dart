/*
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import '../components/custom_surfix_icon.dart';
import '../components/default_button.dart';
import '../components/form_error.dart';
import '../constants.dart';
import '../size_config.dart';

class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final TextEditingController _Restaurantcontroller = TextEditingController();
  final TextEditingController _Itemcontroller = TextEditingController();
  final TextEditingController _Itemcontroller1 = TextEditingController();
  final TextEditingController _Itemcontroller2 = TextEditingController();
  final TextEditingController _Itemcontroller3 = TextEditingController();
  final TextEditingController _Itemcontroller4 = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String? Restaurant_name;
  String? Dish;
  String? Dish1;
  String? Dish2;
  String? Dish3;
  String? Dish4;
  bool remember = false;

  getRestaurant_name(Restaurant) {
    Restaurant_name = Restaurant;
  }

  getDish(dish) {
    Dish = dish;
  }

  getDish1(dish1) {
    Dish1 = dish1;
  }

  getDish2(dish2) {
    Dish2 = dish2;
  }

  getDish3(dish3) {
    Dish3 = dish3;
  }

  getDish4(dish4) {
    Dish4 = dish4;
  }

  createData() {
    */
/*DateTime Date = DateTime.now().toLocal();
    var date = DateFormat.yMMMMd().format(Date);
    String time = DateFormat("HH:mm:ss").format(DateTime.now());
    print(date + "   time  " + time);*//*


    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('hotels list')
        .doc(Restaurant_name);
    //create map
    Map<String, dynamic> users = {
      "Restaurant": Restaurant_name,
      "dish": Dish,
      "dish1": Dish1,
      "dish2": Dish2,
      "dish3": Dish3,
      "dish4": Dish4,
      */
/*"date": date,
      "time": time,*//*

    };
    documentReference
        .set(users)
        .whenComplete(() => {print("$Restaurant_name Details Added")});
  }

  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add The Restaurant Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextFormField(
                controller: _Restaurantcontroller,
                decoration: const InputDecoration(
                    hintText: 'Enter the name of the Restaurant',
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue, width: 2.0))),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Restaurant name';
                  }
                  return null;
                },
                onChanged: (String name) {
                  getRestaurant_name(Restaurant_name);
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _Itemcontroller,
                decoration: const InputDecoration(
                    hintText: 'Enter the name of the Dish',
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue, width: 2.0))),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Dish';
                  }
                  return null;
                },
                onChanged: (String name) {
                  getDish(Dish);
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _Itemcontroller1,
                decoration: const InputDecoration(
                    hintText: 'Enter the name of the Dish',
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue, width: 2.0))),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Dish';
                  }
                  return null;
                },
                onChanged: (String name) {
                  getDish1(Dish1);
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _Itemcontroller2,
                decoration: const InputDecoration(
                    hintText: 'Enter the name of the Dish',
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue, width: 2.0))),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Dish';
                  }
                  return null;
                },
                onChanged: (String name) {
                  getDish2(Dish2);
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _Itemcontroller3,
                decoration: const InputDecoration(
                    hintText: 'Enter the name of the Dish',
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue, width: 2.0))),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Dish';
                  }
                  return null;
                },
                onChanged: (String name) {
                  getDish3(Dish3);
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _Itemcontroller4,
                decoration: const InputDecoration(
                    hintText: 'Enter the name of the Dish',
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue, width: 2.0))),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Dish';
                  }
                  return null;
                },
                onChanged: (String name) {
                  getDish4(Dish4);
                },
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () async {
                    createData();
                    print(
                        "**************** Restaurant Details are Added to Database *****************");
                  },
                  child: const Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}
*/
