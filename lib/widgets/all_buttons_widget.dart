import 'package:calcalutre_for_mina_app/models/buttons_data_model.dart';
import 'package:calcalutre_for_mina_app/widgets/button_widget.dart';
import 'package:calcalutre_for_mina_app/widgets/row_buttons_widget.dart';
import 'package:flutter/material.dart';

class AllButtons extends StatelessWidget {
  AllButtons({super.key, required this.buttons});

  final List<ButtonsDataModel> buttons;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 250,
          height: 410,
          child: Column(
            children: [
              RowButtons(buttons: buttons.sublist(0, 3)),
              RowButtons(buttons: buttons.sublist(3, 6)),
              RowButtons(buttons: buttons.sublist(6, 9)),
              RowButtons(buttons: buttons.sublist(9, 12)),
              RowButtons(buttons: buttons.sublist(12, 14)),
            ],
          ),
        ),
        SizedBox(
          width: 100,
          height: 410,
          child: Column(
            children: [
              ButtonWidget(buttonsDataModel: buttons[14]),
              ButtonWidget(buttonsDataModel: buttons[15]),
              ButtonWidget(buttonsDataModel: buttons[16]),
              ButtonWidget(buttonsDataModel: buttons[17]),
            ],
          ),
        ),
      ],
    );
  }
}
