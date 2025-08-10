import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/User/Application_outside_country/Data/mediciens.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final List<PopupMenuEntry<String>> items;
  const CustomIconButton({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final RenderBox button = context.findRenderObject() as RenderBox;
        final Offset buttonPosition = button.localToGlobal(Offset.zero);
        final Size buttonSize = button.size;

        final selected = await showMenu<String>(
          context: context,
          position: RelativeRect.fromLTRB(
            buttonPosition.dx,
            buttonPosition.dy + buttonSize.height,
            buttonPosition.dx + buttonSize.width,
            buttonPosition.dy,
          ),
          items: medicens,
        );
        if (selected != null) {
          const Text("");
        }
      },
      icon: Icon(
        Icons.arrow_drop_down,
        size: context.screenWidth * 0.06,
        color: ColorConstant.grey,
      ),
    );
  }
}
