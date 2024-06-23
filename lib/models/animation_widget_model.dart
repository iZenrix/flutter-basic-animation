import 'package:flutter/cupertino.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_align_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_builder_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_container_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_cross_fade_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_default_text_style_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_icon_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_list_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_modal_barrier_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_opacity_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_padding_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_physical_model_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_positioned_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_rotation_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_size_widget.dart';
import 'package:flutter_basic_animation/animated_widgets/animated_switcher_widget.dart';

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
  AnimatedWidgetModel(
    name: 'Animated Opacity',
    widget: const AnimatedOpacityWidget(),
  ),
  AnimatedWidgetModel(
    name: 'Animated Padding',
    widget: const AnimatedPaddingWidget(),
  ),
  AnimatedWidgetModel(
    name: 'Animated Physical Model',
    widget: const AnimatedPhysicalModelWidget(),
  ),
  AnimatedWidgetModel(
    name: 'Animated Positioned',
    widget: const AnimatedPositionedWidget(),
  ),
  AnimatedWidgetModel(
    name: 'Animated Rotation',
    widget: const AnimatedRotationWidget(),
  ),
  AnimatedWidgetModel(
    name: 'Animated Size',
    widget: const AnimatedSizeWidget(),
  ),
  AnimatedWidgetModel(
    name: 'Animated Switcher',
    widget: const AnimatedSwitcherWidget(),
  ),
];
