import 'package:validate/validate.dart';

String emailValidator(String value) {
  try {
    Validate.isEmail(value);
  } catch (e) {
    return 'Ingrese una dirección de correo válida.';
  }
  return null;
}

String passwordValidator(String value) {
  if (value.length < 8) {
    return 'Su password debe tener al menos 8 caracteres';
  }
  return null;
}