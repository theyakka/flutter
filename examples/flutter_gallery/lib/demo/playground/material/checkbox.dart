// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../configuration/material_helpers.dart';
import '../playground_demo.dart';

const String _demoWidgetName = 'Checkbox';

/// ignore: must_be_immutable
class CheckboxDemo extends PlaygroundDemo {
  Color _activeColor = Colors.blue;
  bool _value = true;

  @override
  String tabName() => _demoWidgetName.toUpperCase();

  @override
  String codePreview() => '''
Checkbox(
  value: $_value,
  activeColor: ${codeSnippetForColor(_activeColor)},
  onChanged: (bool value) {},
)
''';

  @override
  Widget configWidget(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        colorPicker(
            label: 'Active Color',
            selectedValue: _activeColor,
            onItemTapped: (int index, Color color) {
              updateConfiguration(() {
                _activeColor = color;
              });
            }),
      ],
    );
  }

  @override
  Widget previewWidget(BuildContext context) {
    return Center(
      child: Checkbox(
        value: _value,
        activeColor: _activeColor,
        onChanged: (bool value) {
          updateConfiguration(() {
            _value = value;
          });
        },
      ),
    );
  }
}
