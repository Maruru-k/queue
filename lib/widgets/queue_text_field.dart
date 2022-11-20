import 'package:flutter/material.dart';
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/theme/queue_text_style.dart';

class QueueTextField extends StatelessWidget {
  final TextEditingController _textEditingController;
  final double _height;

  const QueueTextField({
    super.key,
    required TextEditingController textEditingController,
    double? height,
  })  : _textEditingController = textEditingController,
        _height = height ?? 44;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      child: Material(
        elevation: 2,
        shadowColor: QueueColor.white,
        borderRadius: BorderRadius.circular(15),
        child: TextField(
          controller: _textEditingController,
          style: QueueTextStyle.title(QueueColor.primary),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              focusColor: QueueColor.primary,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: QueueColor.grey),
                  borderRadius: BorderRadius.circular(15)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: QueueColor.primary),
                  borderRadius: BorderRadius.circular(15))),
        ),
      ),
    );
  }
}
