import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_bloc/bloc/home_event.dart';
import 'package:sample_bloc/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeBloc():super(ColorInit(Colors.green)){
    on<ChangeColorEvent>((event, emit) {
      emit(ColorRepaint(Color(Random().nextInt(0xffffffff))));
    });
  }
}