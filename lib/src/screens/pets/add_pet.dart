import 'package:flutter/material.dart';

class AddPet extends StatefulWidget {

  /// The AddPet widget is a form for add a pet of the user.

  const AddPet({Key? key}) : super(key: key);

  @override
  _AddPetState createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {
  late int selectedRadio;

  @override
  void initState() {
    selectedRadio = 0;
    super.initState();
  }

  setSelectedRadio(int value) {
    setState(() {
      selectedRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Add Pet"),
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const TextField(
                    keyboardType: TextInputType.name,
                    autofocus: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                      labelText: "Pet Name",
                    ),
                    maxLength: 20,
                    maxLines: 1,
                  ),
                  const TextField(
                    keyboardType: TextInputType.name,
                    autofocus: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Pet Type",
                    ),
                    maxLength: 20,
                    maxLines: 1,
                  ),
                  const TextField(
                    keyboardType: TextInputType.name,
                    autofocus: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Pet Breed",
                    ),
                    maxLength: 20,
                    maxLines: 1,
                  ),
                  const TextField(
                    keyboardType: TextInputType.number,
                    autofocus: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Pet Age",
                    ),
                    maxLength: 3,
                    maxLines: 1,
                  ),
                  Row(
                    children: [
                      const Text("Male"),
                      Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          onChanged: (int? value) {
                            setSelectedRadio(value!);
                          }),
                      const Text("Female"),
                      Radio(
                        value: 2,
                        groupValue: selectedRadio,
                        onChanged: (int? value) {
                          setSelectedRadio(value!);
                        },
                      )
                    ],
                  ),
                  ButtonBar(
                    buttonPadding: const EdgeInsets.all(16.0),
                    alignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Cancel")),
                      TextButton(onPressed: () {}, child: const Text("Save")),
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
