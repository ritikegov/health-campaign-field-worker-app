import 'package:auto_route/auto_route.dart';
import 'package:digit_ui_components/digit_components.dart';
import 'package:digit_ui_components/models/accordionModel.dart';
import 'package:digit_ui_components/widgets/atoms/accordion.dart';
import 'package:digit_ui_components/widgets/atoms/menu_card.dart';
import 'package:digit_ui_components/widgets/molecules/digit_card.dart';
import 'package:flutter/material.dart';

import '../../router/app_router.dart';
import '../../utils/i18_key_constants.dart' as i18;
import '../../widgets/header/back_navigation_help_header.dart';

@RoutePage()
class HrmsLandingPage extends StatelessWidget {
  const HrmsLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: ScrollableContent(
        enableFixedDigitButton: false,
        header: const Column(
          children: [
            BackNavigationHelpHeaderWidget(), // for consistency with ProfilePage
          ],
        ),
        children: [
          DigitCard(
            margin: const EdgeInsets.all(spacer2),
            padding: const EdgeInsets.all(spacer2),
            children: [
              Center(
                child: Text(
                  "HRMS",
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
              const SizedBox(height: spacer2),
              MenuCard(heading: 'Create User',onTap: () {
                context.router.push( const CreateUserRoute());
              } ,),
              MenuCard(heading: 'Search User', onTap: (){
                context.router.push(const SearchUserRoute());
              },)
            ],
          ),
        ],
      ),
    );
  }
}
