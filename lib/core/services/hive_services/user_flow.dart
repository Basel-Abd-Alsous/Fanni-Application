import 'package:hive/hive.dart';

part 'user_flow.g.dart';

@HiveType(typeId:0)
enum UserFlow {
  @HiveField(0)
  customer,
  @HiveField(1)
  vendor,
}
