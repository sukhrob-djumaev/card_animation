import 'package:flutter/material.dart';

class GraphCounter extends ImplicitlyAnimatedWidget {
  final int value;
  const GraphCounter(this.value, {super.key, required super.duration});

  @override
  ImplicitlyAnimatedWidgetState<GraphCounter> createState() => _GraphCounterState();
}

class _GraphCounterState extends AnimatedWidgetBaseState<GraphCounter> {
  late IntTween _count;

  @override
  void initState() {
    _count = IntTween(begin: widget.value, end: widget.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$ ${_count.evaluate(animation)}',
      style: const TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _count = visitor(
      _count,
      widget.value,
      (dynamic value) => IntTween(begin: value),
    ) as IntTween;
  }
}
