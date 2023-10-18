// ignore_for_file: no-magic-number
import 'package:hive/hive.dart';

part 'investition.g.dart';

/// Profile that storages in local memory.
@HiveType(typeId: 2)
class Investition {
  /// Nick name.
  @HiveField(0)
  String itemName;

  /// Password.
  @HiveField(1)
  double buyPrice;

  /// Password.
  @HiveField(2)
  double sellPrice;

  /// Password.
  @HiveField(3)
  double count;

  /// Constructor.
  Investition(this.itemName, this.buyPrice, this.sellPrice, this.count);
}
