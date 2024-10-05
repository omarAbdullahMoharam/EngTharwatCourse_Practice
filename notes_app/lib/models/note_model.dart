import 'package:hive/hive.dart';
// give the generator the file name to generate TypeAdapter for
// Using The Keyword part'(Name for the model you need to store its fields in THe Hive DataBase)'
// 🚨🚨🚨Insure that the
//file name typed CORRECTLY +(.g.dart)
//at the end of the file name 🚨🚨🚨
part 'note_model.g.dart';

//  🚨🚨🚨The command you need to use to generate the TypeAdapter file is 🔻🔻🔻
// flutter packages pub run build_runner build
// give the model object type to be TypeAdapted for Hive
@HiveType(typeId: 0)
// extends provides you come features to ease the process

class NoteModel extends HiveObject {
  // Give each field a field (index)-->(ID) To generate the box fields correctly

  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
