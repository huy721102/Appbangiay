import 'package:get_storage/get_storage.dart';

class HLocalStorage {
  static final HLocalStorage _instance = HLocalStorage._internal();

factory HLocalStorage(){
  return _instance;
}

HLocalStorage._internal();

final _storage = GetStorage();

//genric method to save data
Future<void> saveData<H>(String key, H value) async{
  await _storage.write(key, value);
}

//generic method to read data
H? readData<H>(String key){
  return _storage.read<H>(key);
}

//generic method to remove data
Future<void> removeData(String key) async{
  await _storage.remove(key);
}

//clear all data in storage
Future<void> clearAll() async{
  await _storage.erase();
}
}