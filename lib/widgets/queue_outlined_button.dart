import 'package:flutter/material.dart';
import 'package:queue/theme/queue_colors.dart';

class QueueOutlinedButton extends StatelessWidget {
  final Widget _child;
  final double _height;
  final VoidCallback? _onPressed;
  final Color? _color;

  const QueueOutlinedButton({
    super.key,
    required Widget child,
    required VoidCallback? onPressed,
    Color? color,
    double? height,
  })  : _child = child,
        _onPressed = onPressed,
        _color = color,
        _height = height ?? 60;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
        onPressed: _onPressed,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(_color ?? QueueColor.white),
          side: MaterialStateProperty.all<BorderSide?>(_color == null
              ? const BorderSide(color: QueueColor.darkGray)
              : null),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: _child,
      ),
    );
  }
}
