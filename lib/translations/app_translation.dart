import 'en.dart';
import 'fr.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translationKeys = {
    'en': en,
    'fr': fr,
  };
}
