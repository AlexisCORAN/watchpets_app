import 'package:flutter/material.dart';
import 'package:watchpets/src/widgets/build_alert_widget.dart';

class FullListTile extends StatefulWidget {
  const FullListTile({Key? key}) : super(key: key);

  @override
  _FullListTileState createState() => _FullListTileState();
}

class _FullListTileState extends State<FullListTile> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              child: const PetAlertWidget(),
              onTap: () => Navigator.pushNamed(context, '/showalert'));
        });
  }
}
