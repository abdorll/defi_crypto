import 'package:flutter/cupertino.dart';
import 'package:defi_crypto/utils/color.dart';
import 'package:defi_crypto/widget/spacing.dart';
import 'package:defi_crypto/widget/texts.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          YMargin(20),
          CupertinoActivityIndicator(
            radius: 25,
            color: primaryColor,
          ),
          YMargin(10),
          TextOf("Please wait...", 12, black, FontWeight.w500)
        ],
      ),
    ));
  }
}
