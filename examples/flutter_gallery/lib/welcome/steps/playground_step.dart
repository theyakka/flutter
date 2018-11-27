// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_gallery/welcome/step.dart';

const String _kGalleryAssetsPackage = 'flutter_gallery_assets';

class PlaygroundWelcomeStep extends WelcomeStep {
  PlaygroundWelcomeStep({TickerProvider tickerProvider})
      : super(tickerProvider: tickerProvider);

  @override
  String title() => 'Interactive widget playground';
  @override
  String subtitle() =>
      'Explore the rich native UI widgets in real-time. See and share the code to get up and running, fast.';

  @override
  Widget imageWidget() {
    return Image.asset(
      'welcome/welcome_playground.png',
      package: _kGalleryAssetsPackage,
    );
  }

  @override
  void animate({bool restart}) {}
}
