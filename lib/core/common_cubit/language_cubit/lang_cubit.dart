import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

part 'lang_state.dart';

class LangCubit extends Cubit<String> {
  LangCubit() : super('en');
  void changeLang(String lang,BuildContext context) {
    final locale=lang=='en'?Locale('en','US'):Locale('ar','EG');
    context.setLocale(locale);
    emit(lang);
  }

}
