import 'package:calcalutre_for_mina_app/cubits/calculter_state.dart';
import 'package:calcalutre_for_mina_app/models/buttons_data_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalclutreCubit extends Cubit<CalculterState> {
  CalclutreCubit() : super(CalculterInitional());
  FinalModel finalModel = FinalModel(calText: '0', result: 0);

  void getResult({required ButtonsDataModel buttonsDataModel}) {
    if (buttonsDataModel.text == null) {
      finalModel.deleteOneElement();
    } else if (buttonsDataModel.text == '=') {
      //print(finalModel!.calText);
      finalModel.equal();
    } else if (buttonsDataModel.text == 'Ac') {
      //print(finalModel!.calText);
      finalModel.AC();
    } else {
      finalModel.Add(buttonsDataModel.text!);
      print(finalModel.calText);
    }
    emit(CalculterSuccess());
  }
}
