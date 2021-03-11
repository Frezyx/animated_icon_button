// part of '../animated_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';

@freezed
class AnimatedIconItem with _$AnimatedIconItem {
  const factory AnimatedIconItem(
      {required Icon icon,
      @Default(Colors.transparent) Color backgroundColor,
      String? tooltip,
      VoidCallback? onPressed}) = _AnimatedIconItem;
}
