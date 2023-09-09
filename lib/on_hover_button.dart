import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

class OnHoverButton extends StatefulWidget {
  const OnHoverButton({super.key, required this.child});

  final Widget child;

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoverTransform = Matrix4.identity()..scale(1.2);
    final transform = isHovered ? hoverTransform : Matrix4.identity();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            transform: transform,
            curve: Sprung.overDamped,
            child: widget.child));
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
