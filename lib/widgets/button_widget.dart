import 'package:calcalutre_for_mina_app/cubits/calclutre_cubit.dart';
import 'package:flutter/material.dart';
import 'package:calcalutre_for_mina_app/models/buttons_data_model.dart';
import 'package:calcalutre_for_mina_app/widgets/test_or_icon_widget.dart';
import 'package:calcalutre_for_mina_app/providers/cal_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class ButtonWidget extends StatelessWidget {
  final ButtonsDataModel buttonsDataModel;

  ButtonWidget({super.key, required this.buttonsDataModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: GestureDetector(
        onTap: () {
          BlocProvider.of<CalclutreCubit>(
            context,
          ).getResult(buttonsDataModel: buttonsDataModel);
        },
        child: Container(
          width: buttonsDataModel.width,
          height: buttonsDataModel.height,
          decoration: BoxDecoration(
            color: buttonsDataModel.colorForButton,
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextOrIcons(buttonsDataModel: buttonsDataModel),
        ),
      ),
    );
  }
}
