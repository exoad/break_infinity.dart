import 'package:break_infinity/break_infinity.dart';

void main() {
  BigDouble sum = (1e30).big + (1e30).big;
  print(sum.toDouble());
  print(sum);
  print("Mantissa = ${BigDoubleIntrospect.mantissa(sum)}\nExponent = ${BigDoubleIntrospect.exponent(sum)}");
}