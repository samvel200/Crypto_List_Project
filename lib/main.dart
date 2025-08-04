import 'package:crypto_project/crypto_currencies_list_app.dart';
import 'package:crypto_project/repositories/crypto_coins/abstarct_coins_repository.dart';
import 'package:crypto_project/repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt.I.registerLazySingleton<AbstarctCoinsRepository>(
    () => CryptoCoinsRepository(dio: Dio()),
  );
  runApp(const CryptoCurrenciesListApp());
}
