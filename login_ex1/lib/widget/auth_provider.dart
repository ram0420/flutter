// auth_provider.dart
//상태 관리 및 로그인 상태를 관리하는 AuthProvider 클래스를 정의

import 'package:flutter/foundation.dart';

class AuthProvider with ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  // 예제에서는 간단하게 토글만 하도록 설정
  void signIn() {
    _isAuthenticated = true;
    notifyListeners();
  }
}
