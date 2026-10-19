import 'package:flutter/foundation.dart';

enum PointFilter { all, positive, negative }

enum MessageFolder { inbox, archived }

// Keeps dashboard filters and the active bottom-navigation destination in one place.
class DashboardViewModel extends ChangeNotifier {
  int selectedTab = 0;
  PointFilter pointFilter = PointFilter.all;
  MessageFolder messageFolder = MessageFolder.inbox;

  void selectTab(int index) {
    selectedTab = index;
    notifyListeners();
  }

  void selectPointFilter(PointFilter filter) {
    pointFilter = filter;
    notifyListeners();
  }

  void selectMessageFolder(MessageFolder folder) {
    messageFolder = folder;
    notifyListeners();
  }
}
