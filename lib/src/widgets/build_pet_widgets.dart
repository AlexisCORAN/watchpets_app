import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final String textProperty;
  final String addProperty;

  const RichTextWidget({
    Key? key,
    required this.textProperty,
    required this.addProperty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class PetCardWidget extends StatefulWidget {
  final String propertyName;
  final String propertyType;
  final String propertyBreed;
  final String propertyAge;
  const PetCardWidget({
    Key? key,
    required this.propertyName,
    required this.propertyType,
    required this.propertyBreed,
    required this.propertyAge,
  }) : super(key: key);

  @override
  _PetCardWidgetState createState() => _PetCardWidgetState();
}

class _PetCardWidgetState extends State<PetCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(bottom: 30.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
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
                            widget.propertyName,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichTextWidget(
                                  textProperty: "Pet Type:  ",
                                  addProperty: widget.propertyType),
                              RichTextWidget(
                                  textProperty: "Pet Breed:  ",
                                  addProperty: widget.propertyBreed),
                              RichTextWidget(
                                  textProperty: "Pet Age:  ",
                                  addProperty: widget.propertyAge),
                              /** buildRichText(
                                context, index, "Pet Type:  ", propertyType),
                            buildRichText(
                                context, index, "Pet Breed:  ", propertyBreed),
                            buildRichText(
                                context, index, "Pet Age:  ", propertyAge),*/
                            ]),
                      ),
                    ),
                    ButtonBar(
                      buttonPadding: EdgeInsets.zero,
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(onPressed: () {}, child: const Text('Edit')),
                        TextButton(
                            onPressed: () {}, child: const Text('Delete')),
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
}

/** 
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
                            BuildRichText(
                                textProperty: "Pet Type: ",
                                addProperty: propertyType),
                            /** buildRichText(
                                context, index, "Pet Type:  ", propertyType),
                            buildRichText(
                                context, index, "Pet Breed:  ", propertyBreed),
                            buildRichText(
                                context, index, "Pet Age:  ", propertyAge),*/
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

*/
