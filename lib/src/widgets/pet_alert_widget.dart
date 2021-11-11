import 'package:flutter/material.dart';

class PetAlertWidget extends StatefulWidget {
  /// The PetAlertWidget widget show the information about the alert of a pet lost.
  const PetAlertWidget({
    Key? key,
  }) : super(key: key);

  @override
  _PetAlertWidgetState createState() => _PetAlertWidgetState();
}

class _PetAlertWidgetState extends State<PetAlertWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const ListTile(
        title: Text("Alert Tyrone"),
        subtitle: Text(" pet Name : Toby "),
      ),
    );
  }
}
