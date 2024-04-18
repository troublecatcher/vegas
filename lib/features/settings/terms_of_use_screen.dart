import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:vegas/app/main.dart';

@RoutePage()
class TermsOfUseScreen extends StatelessWidget {
  const TermsOfUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Terms & Conditions'),
      ),
      child: SafeArea(
        bottom: false,
        child: termsOfUse != null && termsOfUse != ''
            ? InAppWebView(
                initialUrlRequest: URLRequest(
                  url: WebUri(termsOfUse!),
                ),
              )
            : const Center(
                child: Text('Failed to load terms and conditions'),
              ),
      ),
    );
  }
}
