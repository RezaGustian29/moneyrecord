import 'package:get/get.dart';
import 'package:moneyrecord/data/model/user.dart';

class CUser extends GetxController {
  final _data = User(
          idUser: '',
          name: '',
          email: '',
          password: '',
          createdAt: '',
          updatedAt: '')
      .obs;
  User get data => _data.value;
  setData(n) => _data.value = n;
}
