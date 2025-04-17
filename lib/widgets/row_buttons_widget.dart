import 'package:calcalutre_for_mina_app/models/buttons_data_model.dart';
import 'package:calcalutre_for_mina_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class RowButtons extends StatelessWidget {
  final List<ButtonsDataModel> buttons;

  RowButtons({super.key, required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Row(children: getWidget(buttons));
  }

  List<Widget> getWidget(List<ButtonsDataModel> modelList) {
    List<Widget> dataButton = [];
    for (var element in modelList) {
      dataButton.add(ButtonWidget(buttonsDataModel: element));
    }
    return dataButton;
  }
}
