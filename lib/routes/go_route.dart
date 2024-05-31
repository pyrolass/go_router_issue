import 'package:flutter/material.dart';
import 'package:flutter_template/screens/testScreen/test_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/screens/bottomNavScreen/bottom_nav_screen.dart';
import 'package:flutter_template/screens/screenA/screen_a.dart';
import 'package:flutter_template/screens/screenB/screen_b.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

GoRouter goRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: ScreenA.routeName,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (final BuildContext context, final GoRouterState state,
          final StatefulNavigationShell navigationShell) {
        return BottomNavScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ScreenA.routeName,
              builder:
                  (final BuildContext context, final GoRouterState state) =>
                      const ScreenA(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ScreenB.routeName,
              builder:
                  (final BuildContext context, final GoRouterState state) =>
                      const ScreenB(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: TestScreen.routeName,
      pageBuilder: (final context, final state) => const MaterialPage(
        child: TestScreen(),
      ),
    ),
  ],
);
