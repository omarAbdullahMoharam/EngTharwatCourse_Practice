import 'package:hive/hive.dart';
// give the generator the file name to generate TypeAdapter for
// Using The Keyword part'(Name for the model you need to store its feilds in THe Hive DataBase)'
part 'note_model.g.dart';

// give the model object type to be TybeAdapted for Hive
@HiveType(typeId: 0)
// extends provides you come features to ease the proccess
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
