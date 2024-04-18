import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:vegas/app/main.dart';

@RoutePage()
class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Support Page'),
      ),
      child: SafeArea(
        bottom: false,
        child: support != null && support != ''
            ? InAppWebView(
                initialUrlRequest: URLRequest(
                  url: WebUri(support!),
                ),
              )
            : const Center(
                child: Text('Failed to load support page'),
              ),
      ),
    );
  }
}
