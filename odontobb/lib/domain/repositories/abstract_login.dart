import 'package:odontobb/domain/entities/usuario.dart';

abstract class AbstracLoginRepository{
  Future<User> doLogin({String ussername, String password});
  Future<void> doLogouth();

}
