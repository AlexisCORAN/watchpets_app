import 'package:flutter/material.dart';

Widget buildRichText(
    BuildContext context, int index, String textProperty, String addProperty) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: RichText(
        text: TextSpan(
            text: textProperty,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
            children: [
          TextSpan(
            text: addProperty,
            style: DefaultTextStyle.of(context).style,
          )
        ])),
  );
}

Widget buildPetCard(BuildContext context, int index, String propertyName,
    String propertyType, String propertyBreed, String propertyAge) {
  return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(
          top: 20.0, bottom: 10.0, left: 30.0, right: 30.0),
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.zero,
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          propertyName,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildRichText(
                                context, index, "Pet Type:  ", propertyType),
                            buildRichText(
                                context, index, "Pet Breed:  ", propertyBreed),
                            buildRichText(
                                context, index, "Pet Age:  ", propertyAge),
                          ]),
                    ),
                  ),
                  ButtonBar(
                    buttonPadding: EdgeInsets.zero,
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(onPressed: () {}, child: const Text('Edit')),
                      TextButton(onPressed: () {}, child: const Text('Delete')),
                    ],
                  )
                ],
              )),
              Expanded(
                  child: Image.network(
                      'https://thumbs.dreamstime.com/b/pets-standing-front-white-background-11785222.jpg')),
            ],
          )));
}
