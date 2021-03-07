import 'package:flutter/foundation.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PetParksPanelProvider extends ChangeNotifier {
  PanelController _panelController;
  PanelController get panelController => _panelController;

  PetParksPanelProvider() {
    _panelController = new PanelController();
  }

  void closePanel() async {
    if (_panelController.isAttached) {
      await _panelController.close();
      notifyListeners();
    }
  }

  void hidePanel() async {
    if (_panelController.isAttached) {
      await _panelController.hide();
      notifyListeners();
    }
  }

  void showPanel() async {
    if (_panelController.isAttached) {
      await _panelController.show();
      notifyListeners();
    }
  }
}
