import 'package:hive/hive.dart';

part 'profile.g.dart';

/// Profile that storages in local memory.
@HiveType(typeId: 1)
class Profile {
  /// Nick name.
  @HiveField(0)
  String nickName;

  /// Password.
  @HiveField(1)
  String password;

  /// Investition list.
  // ignore: no-magic-number
  @HiveField(2)
  final HiveList<HiveObject>? _investitionList;

  /// Investition list.
  // ignore: no-magic-number
  @HiveField(3)
  final HiveList<HiveObject>? _investitionHistoryList;

  /// Getter for local field _investitionList.
  HiveList<HiveObject>? get investitionList => _investitionList;

  /// Getter for local field _investitionList.
  HiveList<HiveObject>? get investitionHistoryList => _investitionHistoryList;

  /// Constructor.
  Profile(
    this._investitionList,
    this._investitionHistoryList, {
    required this.nickName,
    required this.password,
  });

  /// Method that provide adding new values to _investitionList.
  void addToInvestitionList(HiveObject value) {
    _investitionList?.add(value);
  }

  /// Method that provide removing values from _investitionList.
  void removeFromInvestitionList(HiveObject value) {
    _investitionList?.remove(value);
  }

  /// Method that provide adding new values to _investitionHistoryList.
  void addToInvestitionHistoryList(HiveObject value) {
    _investitionHistoryList?.add(value);
  }

  /// Method that provide removing values from _investitionHistoryList.
  void removeFromInvestitionHistoryList(HiveObject value) {
    _investitionHistoryList?.remove(value);
  }
}
