import 'package:flutter/foundation.dart';

class SettingsViewModel extends ChangeNotifier {
  bool pushNotificationsEnabled = true;
  bool emailNotificationsEnabled = true;

  void setPushNotifications(bool enabled) {
    pushNotificationsEnabled = enabled;
    notifyListeners();
  }

  void setEmailNotifications(bool enabled) {
    emailNotificationsEnabled = enabled;
    notifyListeners();
  }
}
