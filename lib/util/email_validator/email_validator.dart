import 'package:validate/validate.dart';

String emailValidator(String value) {
  try {
    Validate.isEmail(value);
  } catch (e) {
    return 'Ingrese una dirección de correo válida.';
  }
  return null;
}
