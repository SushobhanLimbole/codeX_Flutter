import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/java.dart';

// import 'pack.dart';

class Codes extends StatelessWidget {
  final String? titleName;
  final List? code;
  const Codes({super.key, this.titleName, this.code});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$titleName"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: code!.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 100,
              child: HighlightView(
              "${code![index]}",
              languageId: java.id,
              theme: githubDarkDimmedTheme,
            ),
            );
          },
        ),
      ),
    );
  }
}
