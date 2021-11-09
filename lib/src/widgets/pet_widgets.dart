import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final String textBold;
  final String addProperty;

  const RichTextWidget({
    Key? key,
    required this.textBold,
    required this.addProperty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: RichText(
          text: TextSpan(
              text: textBold,
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
  bool? check = false;

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.zero,
                      child: ListTile(
                        title: Padding(
                          padding: EdgeInsets.zero,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                  value: check,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      check = value;
                                    });
                                  }),
                              Expanded(
                                child: Text(
                                  widget.propertyName,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichTextWidget(
                                  textBold: "Pet Type:  ",
                                  addProperty: widget.propertyType),
                              RichTextWidget(
                                  textBold: "Pet Breed:  ",
                                  addProperty: widget.propertyBreed),
                              RichTextWidget(
                                  textBold: "Pet Age:  ",
                                  addProperty: widget.propertyAge),
                            ]),
                      ),
                    ),
                  ],
                )),
                const Expanded(
                  child: Image(
                    image: AssetImage('assets/pets.jpg'),
                  ),
                )
              ],
            )));
  }
}
