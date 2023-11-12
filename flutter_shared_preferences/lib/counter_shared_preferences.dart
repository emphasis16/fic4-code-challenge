import 'package:shared_preferences/shared_preferences.dart';

class CounterSharedPreferences {
  final String counterKey = 'counter';

  // store data
  Future<bool> saveData(int counter) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setInt(counterKey, counter);
  }

  // read data
  Future<int> getData() async {
    final prefs = await SharedPreferences.getInstance();
    final counter = prefs.getInt(counterKey) ?? 16;
    return counter;
  }

  // remove data
  Future<bool> removeData() async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.remove(counterKey);
  }
}