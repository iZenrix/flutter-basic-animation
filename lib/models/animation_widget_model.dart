import 'package:flutter/cupertino.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_align_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_builder_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_container_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_cross_fade_widget.dart';

class AnimatedWidgetModel{
  final String name;
  final Widget widget;

  AnimatedWidgetModel({required this.name, required this.widget});
}

final List<AnimatedWidgetModel> animatedWidgets = [
  AnimatedWidgetModel(
    name: 'Animated Container',
    widget: const AnimatedContainerWidget(),
  ),
  AnimatedWidgetModel(
    name: 'Animated Builder',
    widget: const AnimatedBuilderWidget(),
  ),
  AnimatedWidgetModel(
    name: 'Animated Align',
    widget: const AnimatedAlignWidget(),
  ),
  AnimatedWidgetModel(
    name: 'Animated Cross Fade',
    widget: const AnimatedCrossFadeWidget(),
  ),
];