// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// This sample app shows an app with two screens.
///
/// The first route '/' is mapped to [HomeScreen], and the second route
/// '/details' is mapped to [DetailsScreen].
///
/// The buttons use context.go() to navigate to each destination. On mobile
/// devices, each destination is deep-linkable and on the web, can be navigated
/// to using the address bar.
void main() => runApp(const MyApp());

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'a',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreenA();
          },
        ),
        GoRoute(
            path: 'b',
            builder: (BuildContext context, GoRouterState state) {
              return const DetailsScreenB();
            }),
        GoRoute(
            path: 'c',
            builder: (BuildContext context, GoRouterState state) {
              return const DetailsScreenC();
            }),
        GoRoute(
            path: 'd',
            builder: (BuildContext context, GoRouterState state) {
              return const DetailsScreenD();
            }),
      ],
    ),
  ],
);

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

/// The home screen
class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => context.push('/a'),
              child: const Text('Go to the a screen'),
            ),
          ],
        ),
      ),
    );
  }
}

/// The details screen
class DetailsScreenA extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('a Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push('/b'),
          child: const Text('Go back to the b screen'),
        ),
      ),
    );
  }
}

class DetailsScreenB extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('b  Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push('/c'),
          child: const Text('Go back to the c screen'),
        ),
      ),
    );
  }
}

class DetailsScreenC extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('c  Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push('/d'),
          child: const Text('Go back to the d screen'),
        ),
      ),
    );
  }
}

class DetailsScreenD extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreenD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('aaa  Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push('/'),
          child: const Text('Go back to the Home screen'),
        ),
      ),
    );
  }
}
