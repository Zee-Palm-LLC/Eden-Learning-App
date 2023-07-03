import 'package:eden_learning_app/app/data/constants/constants.dart';

class BestTeachersModel {
  String name;
  String bio;
  String image;
  int position;
  BestTeachersModel({
    required this.name,
    required this.bio,
    required this.image,
    required this.position,
  });
}

List<BestTeachersModel> bestTeachers = [
  BestTeachersModel(
    name: 'Martín Abasto',
    bio: 'Illustrator',
    image: AppAssets.kUser3,
    position: 1,
  ),
  BestTeachersModel(
    name: 'Emmy Elsner',
    bio: 'Design Expert',
    image: AppAssets.kUser6,
    position: 2,
  ),
  BestTeachersModel(
    name: 'Meng Ru',
    bio: 'Esports Coach',
    image: AppAssets.kUser7,
    position: 3,
  ),
];
