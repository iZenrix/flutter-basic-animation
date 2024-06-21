import 'package:flutter/cupertino.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_align_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_builder_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_container_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_cross_fade_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_default_text_style_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_icon_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_list_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_modal_barrier_widget.dart';

class AnimatedWidgetModel {
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
  AnimatedWidgetModel(
    name: 'Animated Default TextStyle',
    widget: const AnimatedDefaultTextStyleWidget(),
  ),
  AnimatedWidgetModel(
    name: 'Animated Icon',
    widget: const AnimatedIconWidget(),
  ),
  AnimatedWidgetModel(
    name: 'Animated List',
    widget: const AnimatedListWidget(),
  ),
  AnimatedWidgetModel(
    name: 'Animated Modal Barrier',
    widget: const AnimatedModalBarrierWidget(),
  ),
];
