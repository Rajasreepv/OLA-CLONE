import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ride_app/global/global.dart';

import 'package:ride_app/splashScreen/splash_screen.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

_normalProgress(context) async {
  ProgressDialog pf = ProgressDialog(context: context);
  pf.show(
      msg: 'Saving please wait...',
      progressBgColor: Colors.transparent,
      backgroundColor: Colors.white,
      msgColor: Color.fromARGB(255, 5, 71, 65),
      progressValueColor: Colors.purple);
}

class carInfoScreen extends StatefulWidget {
  const carInfoScreen({super.key});

  @override
  State<carInfoScreen> createState() => _carInfoScreenState();
}

class _carInfoScreenState extends State<carInfoScreen> {
  TextEditingController vehicleModelEditingcontroller = TextEditingController();
  TextEditingController vehicleNumberEditingcontrolller =
      TextEditingController();
  TextEditingController vehicleColortEditingcontroller =
      TextEditingController();
  String carType = "Uber-x";
  List<String> cars = ['Uber-x', 'Uber-Go', 'Auto', 'Bike'];
  carValidation() {
    if (vehicleModelEditingcontroller.text.isEmpty &&
        vehicleNumberEditingcontrolller.text.isEmpty &&
        vehicleColortEditingcontroller.text.isEmpty) {
      Fluttertoast.showToast(msg: "fields Cant be Empty");
    } else {
      saveCarInfo();
    }
  }

  saveCarInfo() {
    // _normalProgress(context);
    Map driversvehicleInfoMap = {
      "vehiclemodel": vehicleModelEditingcontroller.text.trim(),
      "vehiclenumber": vehicleNumberEditingcontrolller.text.trim(),
      "vehiclecolor": vehicleColortEditingcontroller.text.trim(),
      "vehicletype": carType
    };

    DatabaseReference driversref =
        FirebaseDatabase.instance.ref().child("drivers");
    driversref
        .child(currentFirebaseUser!.uid)
        .child("Vehicledetails")
        .set(driversvehicleInfoMap);
    Fluttertoast.showToast(msg: "Car details have been saved successfully!!");
    Navigator.push(
        context, MaterialPageRoute(builder: (c) => const MySplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(208, 191, 255, 1),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("images/cardetails.png"),
                const Text(
                  "Enter Vehicle Details",
                  style: TextStyle(
                      color: Color.fromARGB(255, 5, 71, 65),
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: vehicleModelEditingcontroller,
                  decoration: const InputDecoration(
                      labelText: "Vehicle model",
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      hintStyle: TextStyle(color: Colors.white, fontSize: 10),
                      labelStyle: TextStyle(color: Colors.white, fontSize: 14)),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: vehicleNumberEditingcontrolller,
                  decoration: const InputDecoration(
                      labelText: "Vehicle number",
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      hintStyle: TextStyle(color: Colors.white, fontSize: 10),
                      labelStyle: TextStyle(color: Colors.white, fontSize: 14)),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: vehicleColortEditingcontroller,
                  decoration: const InputDecoration(
                      labelText: "vehicle color",
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      hintStyle: TextStyle(color: Colors.white, fontSize: 10),
                      labelStyle: TextStyle(color: Colors.white, fontSize: 14)),
                ),
                const SizedBox(
                  height: 10,
                ),
                DropdownButton(
                  dropdownColor: Color.fromRGBO(208, 191, 255, 1),
                  iconSize: 26,
                  hint: Text(
                    "Please choose car type",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.purple,
                        backgroundColor: Colors.purple[200]),
                  ),
                  value: carType,
                  onChanged: (value) {
                    setState(() {
                      carType = value.toString();
                    });
                  },
                  items: cars.map((car) {
                    return DropdownMenuItem(
                        child: Text(
                          car,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        value: car);
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                      onPressed: () {
                        carValidation();
                      },
                      child: Text("Save")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
