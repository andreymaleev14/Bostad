import 'package:collection/collection.dart';

enum InitButtons {
  buy,
  sell,
  rent,
  none,
}

enum ProperyTypeBuy {
  house,
  apartment,
  businessProperty,
  buildingPlot,
  none,
}

enum PropertyTypeSell {
  house,
  apartment,
  businessProperty,
  buildingPlot,
  none,
}

enum PropertyTypeRentListingType {
  wishToRent,
  wishToRentOut,
  wishToSwap,
  none,
}

enum FilterHomeType {
  allTypes,
  house,
  apartment,
  businessProperty,
  buildningPlot,
  other,
}

enum FilterFilterType {
  forSell,
  forRent,
  wishToRent,
  wishToBuy,
  toSwap,
  sold,
}

enum PropertyTypeSellSelection {
  sellNow,
  sellWhitinXMonths,
  estimateOnly,
  none,
}

enum OwnerDashboardSellPriceEstimate {
  our,
  own,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (InitButtons):
      return InitButtons.values.deserialize(value) as T?;
    case (ProperyTypeBuy):
      return ProperyTypeBuy.values.deserialize(value) as T?;
    case (PropertyTypeSell):
      return PropertyTypeSell.values.deserialize(value) as T?;
    case (PropertyTypeRentListingType):
      return PropertyTypeRentListingType.values.deserialize(value) as T?;
    case (FilterHomeType):
      return FilterHomeType.values.deserialize(value) as T?;
    case (FilterFilterType):
      return FilterFilterType.values.deserialize(value) as T?;
    case (PropertyTypeSellSelection):
      return PropertyTypeSellSelection.values.deserialize(value) as T?;
    case (OwnerDashboardSellPriceEstimate):
      return OwnerDashboardSellPriceEstimate.values.deserialize(value) as T?;
    default:
      return null;
  }
}
