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
class _$AnimatedIconItemTearOff {
  const _$AnimatedIconItemTearOff();

  _AnimatedIconItem call(
      {required Icon icon,
      Color backgroundColor = Colors.transparent,
      String? tooltip,
      void Function()? onPressed}) {
    return _AnimatedIconItem(
      icon: icon,
      backgroundColor: backgroundColor,
      tooltip: tooltip,
      onPressed: onPressed,
    );
  }
}

/// @nodoc
const $AnimatedIconItem = _$AnimatedIconItemTearOff();

/// @nodoc
mixin _$AnimatedIconItem {
  Icon get icon => throw _privateConstructorUsedError;
  Color get backgroundColor => throw _privateConstructorUsedError;
  String? get tooltip => throw _privateConstructorUsedError;
  void Function()? get onPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimatedIconItemCopyWith<AnimatedIconItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimatedIconItemCopyWith<$Res> {
  factory $AnimatedIconItemCopyWith(
          AnimatedIconItem value, $Res Function(AnimatedIconItem) then) =
      _$AnimatedIconItemCopyWithImpl<$Res>;
  $Res call(
      {Icon icon,
      Color backgroundColor,
      String? tooltip,
      void Function()? onPressed});
}

/// @nodoc
class _$AnimatedIconItemCopyWithImpl<$Res>
    implements $AnimatedIconItemCopyWith<$Res> {
  _$AnimatedIconItemCopyWithImpl(this._value, this._then);

  final AnimatedIconItem _value;
  // ignore: unused_field
  final $Res Function(AnimatedIconItem) _then;

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
abstract class _$AnimatedIconItemCopyWith<$Res>
    implements $AnimatedIconItemCopyWith<$Res> {
  factory _$AnimatedIconItemCopyWith(
          _AnimatedIconItem value, $Res Function(_AnimatedIconItem) then) =
      __$AnimatedIconItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {Icon icon,
      Color backgroundColor,
      String? tooltip,
      void Function()? onPressed});
}

/// @nodoc
class __$AnimatedIconItemCopyWithImpl<$Res>
    extends _$AnimatedIconItemCopyWithImpl<$Res>
    implements _$AnimatedIconItemCopyWith<$Res> {
  __$AnimatedIconItemCopyWithImpl(
      _AnimatedIconItem _value, $Res Function(_AnimatedIconItem) _then)
      : super(_value, (v) => _then(v as _AnimatedIconItem));

  @override
  _AnimatedIconItem get _value => super._value as _AnimatedIconItem;

  @override
  $Res call({
    Object? icon = freezed,
    Object? backgroundColor = freezed,
    Object? tooltip = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_AnimatedIconItem(
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
class _$_AnimatedIconItem implements _AnimatedIconItem {
  const _$_AnimatedIconItem(
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
    return 'AnimatedIconItem(icon: $icon, backgroundColor: $backgroundColor, tooltip: $tooltip, onPressed: $onPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnimatedIconItem &&
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
  _$AnimatedIconItemCopyWith<_AnimatedIconItem> get copyWith =>
      __$AnimatedIconItemCopyWithImpl<_AnimatedIconItem>(this, _$identity);
}

abstract class _AnimatedIconItem implements AnimatedIconItem {
  const factory _AnimatedIconItem(
      {required Icon icon,
      Color backgroundColor,
      String? tooltip,
      void Function()? onPressed}) = _$_AnimatedIconItem;

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
  _$AnimatedIconItemCopyWith<_AnimatedIconItem> get copyWith =>
      throw _privateConstructorUsedError;
}
