abstract class Task {
  String title;
  String description;
  late DateTime creationDateTime;
  late DateTime updateDateTime;

  Task({
    required this.title,
    required this.description,
  }) {
    creationDateTime = DateTime.now();
    updateDateTime = DateTime.now();
  }
}
