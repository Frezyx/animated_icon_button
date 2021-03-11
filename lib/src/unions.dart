import 'package:freezed_annotation/freezed_annotation.dart';

part 'unions.freezed.dart';

@freezed
class AnimationDirection with _$AnimationDirection {
  const factory AnimationDirection.forward() = _Forward;
  const factory AnimationDirection.reverse() = _Reverse;
  const factory AnimationDirection.bounce() = _Bounce;
}
