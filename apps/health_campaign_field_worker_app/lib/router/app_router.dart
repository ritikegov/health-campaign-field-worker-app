import 'package:auto_route/auto_route.dart';
import 'package:digit_data_model/data_model.dart';
import 'package:flutter/material.dart';

import '../blocs/localization/app_localization.dart';
import '../pages/acknowledgement.dart';
import '../pages/authenticated.dart';
import '../pages/boundary_selection.dart';
import '../pages/home.dart';
import '../pages/language_selection.dart';
import '../pages/login.dart';
import '../pages/profile.dart';
import '../pages/project_facility_selection.dart';
import '../pages/project_selection.dart';
import '../pages/qr_details_page.dart';
import '../pages/reports/beneficiary/beneficaries_report.dart';
import '../pages/unauthenticated.dart';
import '../pages/hrms/hrms_landing_page.dart';
import '../pages/hrms/create_user_page.dart';
import '../pages/hrms/search_user_page.dart';

export 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  modules: [],
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> routes = [
    AutoRoute(
      page: UnauthenticatedRouteWrapper.page,
      path: '/',
      children: [
        AutoRoute(
          page: LanguageSelectionRoute.page,
          path: 'language_selection',
          initial: true,
        ),
        AutoRoute(page: LoginRoute.page, path: 'login'),
      ],
    ),
    AutoRoute(
      page: AuthenticatedRouteWrapper.page,
      path: '/',
      children: [
        AutoRoute(page: HomeRoute.page, path: 'home'),
        AutoRoute(page: ProfileRoute.page, path: 'profile'),
        AutoRoute(page: UserQRDetailsRoute.page, path: 'user-qr-code'),
        AutoRoute(
          page: BeneficiariesReportRoute.page,
          path: 'beneficiary-downsync-report',
        ),
        AutoRoute(page: AcknowledgementRoute.page, path: 'acknowledgement'),
        AutoRoute(
          page: ProjectFacilitySelectionRoute.page,
          path: 'select-project-facilities',
        ),
        AutoRoute(
          page: ProjectSelectionRoute.page,
          path: 'select-project',
          initial: true,
        ),
        AutoRoute(
          page: BoundarySelectionRoute.page,
          path: 'select-boundary',
        ),

        // ✅ HRMS Routes
        AutoRoute(page: HrmsLandingRoute.page, path: 'hrms'), //hrms
        AutoRoute(
            page: CreateUserRoute.page, path: 'create-user'), //hrms/create-user
        AutoRoute(
            page: SearchUserRoute.page, path: 'search-user'), //hrms/search-user
      ],
    )
  ];
}
