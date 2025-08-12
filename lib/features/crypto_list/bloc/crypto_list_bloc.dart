import 'package:crypto_project/repositories/crypto_coins/abstarct_coins_repository.dart';
import 'package:crypto_project/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'crypto_list_event.dart';
part 'crypto_list_state.dart';

class CryptoListBloc extends Bloc<CryptoListEvent, CryptoListState> {
  CryptoListBloc(this.coinsRepository) : super(CryptoListInitial()) {
    on<CryptoListEvent>((event, emit) async {
      try {
        final cryptoList = await coinsRepository.getCoinsList();
        emit(CryptoListLoaded(coinsList: cryptoList));
      } catch (e) {
        emit(CryproListLoadingFailure(exception: e));
      }
    });
  }
  final AbstarctCoinsRepository coinsRepository;
}
