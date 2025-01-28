import 'package:big_double/big_double.dart';

BigDouble efficiencyOfPurchase(
        {required BigDouble cost,
        required BigDouble currentResPerSec,
        required BigDouble deltaResPerSec}) =>
    (cost / currentResPerSec) + (cost / deltaResPerSec);

BigDouble sumGeometricSeries(
    {required BigDouble numItems,
    required BigDouble priceStart,
    required BigDouble priceRatio,
    required BigDouble currentOwned}) {
  return ((priceStart * pow(priceRatio, currentOwned)) *
          (1.big - pow(priceRatio, numItems))) /
      (1.big - priceRatio);
}

BigDouble sumArithmeticSeries(
    {required BigDouble numItems,
    required BigDouble priceStart,
    required BigDouble priceAdd,
    required BigDouble currentOwned}) {
  return numItems.divide(2) *
      (((priceStart + (priceAdd * currentOwned)).multiply(2)) +
          (numItems.subtract(1) * priceAdd));
}
