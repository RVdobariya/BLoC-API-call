import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialFetchEvent>(homeInitialFetchEvent);
  }

  FutureOr<void> homeInitialFetchEvent(HomeInitialFetchEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    List data = [];

    try {
      http.Response responce = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

      if (responce.statusCode == 200) {
        debugPrint("called");
        data.addAll(jsonDecode(responce.body));
        emit(HomeSuccessState(data: data));
      }
    } catch (e) {
      emit(HomeErrorState());
      log("Error === $e");
    }
  }
}
