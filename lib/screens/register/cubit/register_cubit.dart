import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:watch_store/data/constants.dart';
import 'package:watch_store/data/model/user.dart';
import 'package:watch_store/utils/shared_preferences_manager.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  final Dio _dio = Dio();

  pickTheLocation({required context}) async {
    await showSimplePickerLocation(
      context: context,
      isDismissible: true,
      title: 'انتخاب موقعیت مکانی',
      textCancelPicker: 'لغو',
      textConfirmPicker: 'انتخاب شد',
      zoomOption: const ZoomOption(initZoom: 8),
      initCurrentUserPosition: const UserTrackingOption.withoutUserPosition(),
      radius: 8.0,
    ).then((value) => emit(LocationPickedState(location: value)));
  }

  register({required User user}) async {
    emit(LoadingState());
    try {
      String? token = SharedPreferencesManager().getString("token");
      _dio.options.headers['Authorization'] = "Bearer $token";
      await _dio
          .post(EndPoint.register, data: FormData.fromMap(user.toMap()))
          .then((value) {
        if (value.statusCode == 201) {
          emit(OkResponseState());
        } else {
          emit(ErrorState());
        }
      });
    } catch (e) {
      emit(ErrorState());
    }
  }
}
