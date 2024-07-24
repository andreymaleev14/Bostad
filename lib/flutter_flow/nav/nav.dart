import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => const NavBarPage(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => const NavBarPage(),
        ),
        FFRoute(
          name: 'add_property_wish_buy_1',
          path: '/addPropertyWishBuy1',
          builder: (context, params) => const AddPropertyWishBuy1Widget(),
        ),
        FFRoute(
          name: 'add_property_init',
          path: '/addPropertyInit',
          builder: (context, params) => const AddPropertyInitWidget(),
        ),
        FFRoute(
          name: 'add_property_rent_rentOut_swap_selection',
          path: '/addPropertyRentRentOutSwapSelection',
          builder: (context, params) =>
              const AddPropertyRentRentOutSwapSelectionWidget(),
        ),
        FFRoute(
          name: 'listing_full',
          path: '/listingFull',
          builder: (context, params) => const ListingFullWidget(),
        ),
        FFRoute(
          name: 'listproperty_buy_sell',
          path: '/listpropertyBuySell',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'listproperty_buy_sell')
              : const ListpropertyBuySellWidget(),
        ),
        FFRoute(
          name: 'listproperty_rent',
          path: '/listpropertyRent',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'listproperty_rent')
              : const ListpropertyRentWidget(),
        ),
        FFRoute(
          name: 'my_account',
          path: '/myAccount',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'my_account')
              : const MyAccountWidget(),
        ),
        FFRoute(
          name: 'filter',
          path: '/filter',
          builder: (context, params) => const FilterWidget(),
        ),
        FFRoute(
          name: 'test',
          path: '/test',
          builder: (context, params) => const TestWidget(),
        ),
        FFRoute(
          name: 'add_property_sell_1_v2',
          path: '/addPropertySell1V2',
          builder: (context, params) => const AddPropertySell1V2Widget(),
        ),
        FFRoute(
          name: 'add_property_sell_2_v2',
          path: '/addPropertySell2V2',
          builder: (context, params) => const AddPropertySell2V2Widget(),
        ),
        FFRoute(
          name: 'add_property_sell_3_v2',
          path: '/addPropertySell3V2',
          builder: (context, params) => const AddPropertySell3V2Widget(),
        ),
        FFRoute(
          name: 'my_listings',
          path: '/myListings',
          builder: (context, params) => const MyListingsWidget(),
        ),
        FFRoute(
          name: 'add_property_wish_rent_out_1',
          path: '/addPropertyWishRentOut1',
          builder: (context, params) => const AddPropertyWishRentOut1Widget(),
        ),
        FFRoute(
          name: 'dashboardSell',
          path: '/dashboardSell',
          builder: (context, params) => const DashboardSellWidget(),
        ),
        FFRoute(
          name: 'add_property_wish_toRent_1',
          path: '/addPropertyWishToRent1',
          builder: (context, params) => const AddPropertyWishToRent1Widget(),
        ),
        FFRoute(
          name: 'add_property_wish_swap_that',
          path: '/addPropertyWishSwapThat',
          builder: (context, params) => const AddPropertyWishSwapThatWidget(),
        ),
        FFRoute(
          name: 'add_property_wish_swap_this',
          path: '/addPropertyWishSwapThis',
          builder: (context, params) => const AddPropertyWishSwapThisWidget(),
        ),
        FFRoute(
          name: 'dashboardRent',
          path: '/dashboardRent',
          builder: (context, params) => const DashboardRentWidget(),
        ),
        FFRoute(
          name: 'dashboardSwap',
          path: '/dashboardSwap',
          builder: (context, params) => const DashboardSwapWidget(),
        ),
        FFRoute(
          name: 'dashboardRentOut',
          path: '/dashboardRentOut',
          builder: (context, params) => const DashboardRentOutWidget(),
        ),
        FFRoute(
          name: 'dashboardBuy',
          path: '/dashboardBuy',
          builder: (context, params) => const DashboardBuyWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
