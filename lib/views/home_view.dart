import 'package:calcalutre_for_mina_app/cubits/calclutre_cubit.dart';
import 'package:calcalutre_for_mina_app/cubits/calculter_state.dart';
import 'package:calcalutre_for_mina_app/models/buttons_data_model.dart';
import 'package:calcalutre_for_mina_app/providers/cal_provider.dart';
import 'package:calcalutre_for_mina_app/widgets/all_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<ButtonsDataModel> buttons = const [
    ButtonsDataModel(
      text: 'Ac',
      colorText: Color(0xffA5A5A5),
      colorForButton: Color(0xff616161),
      width: 62,
      height: 62,
    ),
    ButtonsDataModel(
      colorText: Color(0xffA5A5A5),
      colorForButton: Color(0xff616161),
      width: 62,
      height: 62,
    ),
    ButtonsDataModel(
      text: '/',
      colorText: Color(0xff339DFF),
      colorForButton: Color(0xff005DB2),
      width: 62,
      height: 62,
    ),

    ButtonsDataModel(
      text: '7',
      colorText: Color(0xff29A8FF),
      colorForButton: Color(0xff303136),
      width: 62,
      height: 62,
    ),
    ButtonsDataModel(
      text: '8',
      colorText: Color(0xff29A8FF),
      colorForButton: Color(0xff303136),
      width: 62,
      height: 62,
    ),
    ButtonsDataModel(
      text: '9',
      colorText: Color(0xff29A8FF),
      colorForButton: Color(0xff303136),
      width: 62,
      height: 62,
    ),

    ButtonsDataModel(
      text: '4',
      colorText: Color(0xff29A8FF),
      colorForButton: Color(0xff303136),
      width: 62,
      height: 62,
    ),
    ButtonsDataModel(
      text: '5',
      colorText: Color(0xff29A8FF),
      colorForButton: Color(0xff303136),
      width: 62,
      height: 62,
    ),
    ButtonsDataModel(
      text: '6',
      colorText: Color(0xff29A8FF),
      colorForButton: Color(0xff303136),
      width: 62,
      height: 62,
    ),

    ButtonsDataModel(
      text: '1',
      colorText: Color(0xff29A8FF),
      colorForButton: Color(0xff303136),
      width: 62,
      height: 62,
    ),
    ButtonsDataModel(
      text: '2',
      colorText: Color(0xff29A8FF),
      colorForButton: Color(0xff303136),
      width: 62,
      height: 62,
    ),
    ButtonsDataModel(
      text: '3',
      colorText: Color(0xff29A8FF),
      colorForButton: Color(0xff303136),
      width: 62,
      height: 62,
    ),

    ButtonsDataModel(
      text: '0',
      colorText: Color(0xff29A8FF),
      colorForButton: Color(0xff303136),
      width: 144,
      height: 60,
    ),
    ButtonsDataModel(
      text: '.',
      colorText: Color(0xff29A8FF),
      colorForButton: Color(0xff303136),
      width: 62,
      height: 62,
    ),

    ButtonsDataModel(
      text: '*',
      colorText: Color(0xff339DFF),
      colorForButton: Color(0xff005DB2),
      width: 62,
      height: 62,
    ),
    ButtonsDataModel(
      text: '-',
      colorText: Color(0xff339DFF),
      colorForButton: Color(0xff005DB2),
      width: 62,
      height: 62,
    ),
    ButtonsDataModel(
      text: '+',
      colorText: Color(0xff339DFF),
      colorForButton: Color(0xff005DB2),
      width: 62,
      height: 100,
    ),
    ButtonsDataModel(
      text: '=',
      colorText: Color(0xffB2DAFF),
      colorForButton: Color(0xff1991FF),
      width: 62,
      height: 100,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff17181A)),
      backgroundColor: Color(0xff17181A),
      body: BlocBuilder<CalclutreCubit, CalculterState>(
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 80,
                child: Text(
                  BlocProvider.of<CalclutreCubit>(context).finalModel.calText,
                  style: TextStyle(color: Colors.blue, fontSize: 50),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 80,
                child: Text(
                  ' ${BlocProvider.of<CalclutreCubit>(context).finalModel.result}',
                  style: TextStyle(color: Colors.blue, fontSize: 50),
                ),
              ),
              SizedBox(height: 20),
              AllButtons(buttons: buttons),
            ],
          );
        },
      ),
    );
  }
}
