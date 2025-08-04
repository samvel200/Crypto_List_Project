import 'package:crypto_project/repositories/crypto_coins/models/crypto_coin.dart';

abstract class AbstarctCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
}
