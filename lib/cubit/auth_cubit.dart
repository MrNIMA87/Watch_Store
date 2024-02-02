import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:watch_store/data/constants.dart';
import 'package:watch_store/utils/shared_preferences_manager.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial()) {
    //check catch token
    //is store = true

    emit(LoggedOutState());
  }
  Dio dio = Dio();

  sendSms(String mobile) async {
    emit(LoadingState());

    try {
      await dio
          .post(EndPoint.sendSms, data: {"mobile": mobile}).then((value) => {
                log(value.toString()),
                if (value.statusCode == 201)
                  {
                    emit(SentState(mobile: mobile)),
                  }
                else
                  {
                    emit(ErrorState()),
                  }
              });
    } catch (e) {
      emit(ErrorState());
    }
  }

  //
  verifyCode(String mobile, String code) async {
    emit(LoadingState());

    try {
      await dio.post(EndPoint.checkSmsCode, data: {
        "mobile": mobile,
        "code": code
      }).then((value) => {
            print(value.toString()),
            if (value.statusCode == 201)
              {
                SharedPreferencesManager()
                    .saveString('token', value.data["data"]['token']),
                    SharedPreferencesManager().getString('token'),

                    log('توکنننننننننننننننننننننننننننننننننننن ${SharedPreferencesManager().getString('token')}'),
                if (value.data["data"]['is_registered'])
                  {
                    emit(VerifiedIsRegisteredState()),
                  }
                else
                  {
                    emit(VerifiedIsRegisteredNotState()),
                  }
              }
            else
              {
                emit(ErrorState()),
              }
          });
    } catch (e) {
      emit(ErrorState());
    }
  }

  //
  registration() async {}
  //login
  login() {}
}
