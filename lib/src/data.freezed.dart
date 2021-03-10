// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AnimatedIconButtonEntryTearOff {
  const _$AnimatedIconButtonEntryTearOff();

  _AnimatedIconButtonEntry call(
      {required Icon icon,
      Color backgroundColor = Colors.transparent,
      String? tooltip,
      void Function()? onPressed}) {
    return _AnimatedIconButtonEntry(
      icon: icon,
      backgroundColor: backgroundColor,
      tooltip: tooltip,
      onPressed: onPressed,
    );
  }
}

/// @nodoc
const $AnimatedIconButtonEntry = _$AnimatedIconButtonEntryTearOff();

/// @nodoc
mixin _$AnimatedIconButtonEntry {
  Icon get icon => throw _privateConstructorUsedError;
  Color get backgroundColor => throw _privateConstructorUsedError;
  String? get tooltip => throw _privateConstructorUsedError;
  void Function()? get onPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimatedIconButtonEntryCopyWith<AnimatedIconButtonEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimatedIconButtonEntryCopyWith<$Res> {
  factory $AnimatedIconButtonEntryCopyWith(AnimatedIconButtonEntry value,
          $Res Function(AnimatedIconButtonEntry) then) =
      _$AnimatedIconButtonEntryCopyWithImpl<$Res>;
  $Res call(
      {Icon icon,
      Color backgroundColor,
      String? tooltip,
      void Function()? onPressed});
}

/// @nodoc
class _$AnimatedIconButtonEntryCopyWithImpl<$Res>
    implements $AnimatedIconButtonEntryCopyWith<$Res> {
  _$AnimatedIconButtonEntryCopyWithImpl(this._value, this._then);

  final AnimatedIconButtonEntry _value;
  // ignore: unused_field
  final $Res Function(AnimatedIconButtonEntry) _then;

  @override
  $Res call({
    Object? icon = freezed,
    Object? backgroundColor = freezed,
    Object? tooltip = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_value.copyWith(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Icon,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      tooltip: tooltip == freezed
          ? _value.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String?,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc
abstract class _$AnimatedIconButtonEntryCopyWith<$Res>
    implements $AnimatedIconButtonEntryCopyWith<$Res> {
  factory _$AnimatedIconButtonEntryCopyWith(_AnimatedIconButtonEntry value,
          $Res Function(_AnimatedIconButtonEntry) then) =
      __$AnimatedIconButtonEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {Icon icon,
      Color backgroundColor,
      String? tooltip,
      void Function()? onPressed});
}

/// @nodoc
class __$AnimatedIconButtonEntryCopyWithImpl<$Res>
    extends _$AnimatedIconButtonEntryCopyWithImpl<$Res>
    implements _$AnimatedIconButtonEntryCopyWith<$Res> {
  __$AnimatedIconButtonEntryCopyWithImpl(_AnimatedIconButtonEntry _value,
      $Res Function(_AnimatedIconButtonEntry) _then)
      : super(_value, (v) => _then(v as _AnimatedIconButtonEntry));

  @override
  _AnimatedIconButtonEntry get _value =>
      super._value as _AnimatedIconButtonEntry;

  @override
  $Res call({
    Object? icon = freezed,
    Object? backgroundColor = freezed,
    Object? tooltip = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_AnimatedIconButtonEntry(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Icon,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      tooltip: tooltip == freezed
          ? _value.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String?,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc
class _$_AnimatedIconButtonEntry implements _AnimatedIconButtonEntry {
  const _$_AnimatedIconButtonEntry(
      {required this.icon,
      this.backgroundColor = Colors.transparent,
      this.tooltip,
      this.onPressed});

  @override
  final Icon icon;
  @JsonKey(defaultValue: Colors.transparent)
  @override
  final Color backgroundColor;
  @override
  final String? tooltip;
  @override
  final void Function()? onPressed;

  @override
  String toString() {
    return 'AnimatedIconButtonEntry(icon: $icon, backgroundColor: $backgroundColor, tooltip: $tooltip, onPressed: $onPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnimatedIconButtonEntry &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.backgroundColor, backgroundColor) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundColor, backgroundColor)) &&
            (identical(other.tooltip, tooltip) ||
                const DeepCollectionEquality()
                    .equals(other.tooltip, tooltip)) &&
            (identical(other.onPressed, onPressed) ||
                const DeepCollectionEquality()
                    .equals(other.onPressed, onPressed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(backgroundColor) ^
      const DeepCollectionEquality().hash(tooltip) ^
      const DeepCollectionEquality().hash(onPressed);

  @JsonKey(ignore: true)
  @override
  _$AnimatedIconButtonEntryCopyWith<_AnimatedIconButtonEntry> get copyWith =>
      __$AnimatedIconButtonEntryCopyWithImpl<_AnimatedIconButtonEntry>(
          this, _$identity);
}

abstract class _AnimatedIconButtonEntry implements AnimatedIconButtonEntry {
  const factory _AnimatedIconButtonEntry(
      {required Icon icon,
      Color backgroundColor,
      String? tooltip,
      void Function()? onPressed}) = _$_AnimatedIconButtonEntry;

  @override
  Icon get icon => throw _privateConstructorUsedError;
  @override
  Color get backgroundColor => throw _privateConstructorUsedError;
  @override
  String? get tooltip => throw _privateConstructorUsedError;
  @override
  void Function()? get onPressed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnimatedIconButtonEntryCopyWith<_AnimatedIconButtonEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
