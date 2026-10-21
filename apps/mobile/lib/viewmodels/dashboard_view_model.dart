import 'package:flutter/foundation.dart';

import '../models/school_models.dart';

enum PointFilter { all, positive, negative }

enum MessageFolder { inbox, archived }

// Keeps dashboard filters and the active bottom-navigation destination in one place.
class DashboardViewModel extends ChangeNotifier {
  int selectedTab = 0;
  PointFilter pointFilter = PointFilter.all;
  MessageFolder messageFolder = MessageFolder.inbox;
  PointRecord? selectedPoint;

  void selectTab(int index) {
    selectedTab = index;
    if (index != 1) selectedPoint = null;
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

  void selectPoint(PointRecord record) {
    selectedPoint = record;
    notifyListeners();
  }

  void clearSelectedPoint() {
    selectedPoint = null;
    notifyListeners();
  }
}
