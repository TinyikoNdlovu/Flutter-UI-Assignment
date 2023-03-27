import 'package:flutter/material.dart';
import 'package:user_interfaces/models/car_model.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<CarModel> cars = [
    CarModel("BMW", "Grey", false),
    CarModel("Audi", "White", false),
    CarModel("Mercedes Benz", "Black", false),
    CarModel("Jaguar", "Blue", false),
    CarModel("Portch", "Red", false),
    CarModel("Polo", "Orange", false),
    CarModel("Mazda", "White", false),
    CarModel("Toyota", "Maroon", false),
    CarModel("Ford", "Black", false),
    CarModel("Jeep", "Red", false),
    CarModel("Range Rover", "Grey", false),
    CarModel("Fortune", "Blue", false),
    CarModel("Haval", "Maroon", false),
    CarModel("Hundae", "White", false),
    CarModel("Rolls roise", "Grey", false),
    CarModel("Hummer", "Black", false),
  ];

  List<CarModel> selectedCars = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi Selection ListView"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[700],
      ),
      body: SafeArea(
          child: Container(
        child: ListView.builder(
            itemCount: cars.length,
            itemBuilder: (BuildContext context, int index) {
              // return item
              return CarItem(
                cars[index].name,
                cars[index].color,
                cars[index].isSelected,
                index,
              );
            }),
      ),
      ),
    );
  }

  Widget CarItem(
    String name, String color, bool isSelected, int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[700],
        child: const Icon(
          Icons.car_crash_outlined,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(color),
      trailing: isSelected
          ? Icon(
              Icons.check_circle,
              color: Colors.blue[700],
            )
          : const Icon(
              Icons.check_circle_outline,
              color: Colors.blue,
            ),
      onTap: () {
        setState(() {
          cars[index].isSelected = !cars[index].isSelected;
          if (cars[index].isSelected == true) {
            selectedCars.add(CarModel(name, color, true));
          } else if (cars[index].isSelected == false) {
            selectedCars
                .removeWhere((element) => element.name == cars[index].name);
          }
        });
      },
    );
  }
}
