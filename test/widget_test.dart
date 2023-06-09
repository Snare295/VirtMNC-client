// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:virt_mnc/app/sender_entity.dart';
import 'package:virt_mnc/ui/widgets/message/group/group_message_tile.dart';

void main() {
  testWidgets('GroupMessageTile test of text write',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GroupMessageTile(
            messageStr: "Hello world",
            sender: Sender(id: 200, name: 'Vlad'),
            isMe: false),
      ),
    ));

    expect(find.widgetWithText(AutoSizeText, 'Vlad'), findsOneWidget);
    expect(find.widgetWithText(AutoSizeText, 'Hello world'), findsOneWidget);
  });
}
