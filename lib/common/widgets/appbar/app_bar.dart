import 'package:flutter/material.dart';

class BasicAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? action;
  final Color? backgroundColor;
  final bool hideBack;

  const BasicAppbar({
    this.title,
    this.hideBack = false,
    this.action,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: title ?? const Text(''),
      actions: [
        action ?? Container(),
      ],
      leading: hideBack
          ? null
          : IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SizedBox(
                height: 50,
                width: 50,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 15,
                  color: const Color.fromARGB(255, 255, 255, 255), // Fixed icon color
                ),
              ),
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
