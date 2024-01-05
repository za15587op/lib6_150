class Hobby {
  final String hobby_en;
  final String hobby_th;
  bool value;

  Hobby({required this.hobby_en, required this.hobby_th, required this.value});

  static List<Hobby> gethobby() {
    return [
      Hobby(hobby_en: 'hunting', hobby_th: 'ล่าสัตว์', value: false),
      Hobby(hobby_en: 'boating', hobby_th: 'พายเรือ', value: false),
      Hobby(hobby_en: 'bowling', hobby_th: 'ยิงธนู', value: false),
      Hobby(hobby_en: 'camping', hobby_th: 'ตั้งแค็มป์', value: true)
    ];
  }
}
