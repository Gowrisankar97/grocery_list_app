class ValidatorHelper {
  static String newProductValidator(String value) {
    return value.isEmpty ? "Please add a name" : null;
  }

  static String editingMagnitudeValidator(String value) {
    return value.isEmpty ? "Please add a magnitude" : null;
  }

  static String genericEmptyValidator(String value) {
    return value.isEmpty ? "This can't be empty" : null;
  }
}
