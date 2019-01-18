import '../models/user.dart';
import './connected_products.dart';

mixin UserModel on ConnectedProducts {
  void login(String email, String password) {
    authenticatedUser = User(id: '1', email: email, password: password);
  }
}
