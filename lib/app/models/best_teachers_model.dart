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
    image:
        'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmVzc2lvbmFsfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    position: 1,
  ),
  BestTeachersModel(
    name: 'Emmy Elsner',
    bio: 'Design Expert',
    image:
        'https://images.unsplash.com/photo-1573497019236-17f8177b81e8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmVzc2lvbmFsJTIwd29tYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    position: 2,
  ),
  BestTeachersModel(
    name: 'Meng Ru',
    bio: 'Esports Coach',
    image:
        'https://images.unsplash.com/photo-1610631066894-62452ccb927c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmVzc2lvbmFsJTIwd29tYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    position: 3,
  ),
];
