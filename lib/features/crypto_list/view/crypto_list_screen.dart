import 'package:crypto_project/features/crypto_list/widgets/crypto_coin_tile.dart';
import 'package:flutter/material.dart';


class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, });  
  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    
   
    return Scaffold(
      appBar: AppBar(
         title: const Text('CryptoCurrenciesList'),
      ),
      body:ListView.separated(
        itemCount: 15,
        separatorBuilder: (context,index)=>Divider(),       
        itemBuilder: (context,i) {
          const String coinName = 'Bitcoin';
        return const CryptoCoinTile(coinName: coinName);
        }
        ),
      
    );
  }
}