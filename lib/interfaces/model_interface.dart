abstract class ModelInterface {
  const ModelInterface();
  Map<String, dynamic> toJson();
  ModelInterface fromJson(Map<String, dynamic> json);
  ModelInterface copyWith();
}
