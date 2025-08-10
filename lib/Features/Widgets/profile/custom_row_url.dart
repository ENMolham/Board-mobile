import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomRowUrl extends StatelessWidget {
  final String text;
  final String value;
  final IconData iconRight;
  final Color colorIconRight;
  final double paddingValueRight;
  final String uri;
  const CustomRowUrl({
    super.key,
    required this.text,
    required this.value,
    required this.iconRight,
    required this.colorIconRight,
    required this.paddingValueRight,
    required this.uri,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.0418,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: context.screenWidth * 0.0272),
            child: Icon(
              iconRight,
              color: colorIconRight,
              size: context.screenWidth * 0.045,
            ),
          ),
          CustomText(
            text: text,
            color: ColorConstant.black,
            size: context.fontSize_14,
            fontWeight: FontWeight.bold,
            paddingTop: 0,
            paddingright: context.screenWidth * 0.018,
          ),
          InkWell(
            onTap: () async {
              final Uri url = Uri.parse(uri);
              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              } else {
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('⚠ لا يمكن فتح الرابط'),
                    backgroundColor: ColorConstant.grey,
                    duration: const Duration(seconds: 2),
                  ),
                );
              }
            },
            child: Padding(
              padding: EdgeInsets.only(right: paddingValueRight),
              child: SizedBox(
                width: context.screenWidth * 0.47,
                child: CustomText(
                  text: value,
                  color: const Color.fromARGB(255, 35, 131, 210),
                  size: context.fontSize_14,
                  fontWeight: FontWeight.bold,
                  paddingTop: 0,
                  paddingright: 0,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  textAlign: TextAlign.left,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
