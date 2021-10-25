import 'package:flutter/material.dart';
import 'package:watchpets/src/widgets/textfield_widget.dart';

class AddPet extends StatefulWidget {
  const AddPet({Key? key}) : super(key: key);

  @override
  _AddPetState createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {
  int sex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Pet"),
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const TextField(
                keyboardType: TextInputType.name,
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
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
                  Radio(value: 1, groupValue: sex, onChanged: (value) {}),
                  const Text("Female"),
                  Radio(
                    value: 0,
                    groupValue: sex,
                    onChanged: (value) {},
                  )
                ],
              ),
              ButtonBar(
                buttonPadding: EdgeInsets.zero,
                alignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: () {}, child: const Text("Cancel")),
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
