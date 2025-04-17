import 'package:calcalutre_for_mina_app/cubits/calclutre_cubit.dart';
import 'package:calcalutre_for_mina_app/models/buttons_data_model.dart';
import 'package:calcalutre_for_mina_app/providers/cal_provider.dart';
import 'package:calcalutre_for_mina_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(CalApp());
}

class CalApp extends StatelessWidget {
  const CalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalclutreCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomeView()),
    );
  }
}
