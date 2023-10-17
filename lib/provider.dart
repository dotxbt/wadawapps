import 'package:bip39/bip39.dart' as bip39;
import 'package:ed25519_hd_key/ed25519_hd_key.dart';
import 'package:hex/hex.dart';
import 'package:web3dart/web3dart.dart';

abstract class WalletAddressService {
  String generateMnemonic();
  Future<String> getPrivateKey(String mnemonic);
  Future<Map> getPublicKey(String privateKey);
}

class WalletProvider implements WalletAddressService {
  @override
  String generateMnemonic() {
    return bip39.generateMnemonic();
  }

  @override
  Future<String> getPrivateKey(String mnemonic) async {
    final seed = bip39.mnemonicToSeed(mnemonic);
    final master = await ED25519_HD_KEY.getMasterKeyFromSeed(seed);
    final privateKey = HEX.encode(master.key);
    return privateKey;
  }

  @override
  Future<Map> getPublicKey(String privateKey) async {
    var myMap = {};
    try {
      final private = EthPrivateKey.fromHex(privateKey);
      final address = private.address;
      myMap['eth_provider'] = address;
    } catch (e) {
      myMap['error'] = e.toString();
    }
    return myMap;
  }
}
