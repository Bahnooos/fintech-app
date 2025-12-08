import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable(createToJson: false)
class ApiErrorModel {
  @JsonKey(name: 'error')
  final String? message;
  

 const ApiErrorModel({ this.message});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  // String getAllErrorsMessages() {
  //   return errors!.entries.map((entry) {
  //     final value = entry.value;
  //     return '${value.join(', ')}';
  //   }).join('\n');
  // }
}
