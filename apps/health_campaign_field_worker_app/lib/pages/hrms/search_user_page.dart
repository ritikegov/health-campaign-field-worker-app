import 'package:attendance_management/widgets/localized.dart';
import 'package:digit_ui_components/digit_components.dart';
import 'package:digit_ui_components/widgets/molecules/digit_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../models/entities/hrms.dart';
import '../../blocs/hrmsBlock.dart';
import '../../router/app_router.dart';
import '../../widgets/header/back_navigation_help_header.dart';

@RoutePage()
class SearchUserPage extends LocalizedStatefulWidget {
  const SearchUserPage({super.key});

  @override
  State<SearchUserPage> createState() => _SearchUserPageState();
}

class _SearchUserPageState extends LocalizedState<SearchUserPage> {
  static const _userName = 'userName';


  // void _performSearch(BuildContext context) {
  //   final query = _searchController.text.trim();
  //   if (query.isNotEmpty) {
  //     final searchModel = EmployeeSearchModel(userName: query, tenantId: 'mz'); // Change tenantId as needed
  //     context.read<HrmsBloc>().add(SearchEmployees(searchModel));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReactiveFormBuilder(
        key: UniqueKey(),
        form: () => buildForm(),
        builder: (context, formGroup, child) => ScrollableContent(
          header: const Column(children: [
            BackNavigationHelpHeaderWidget(),

          ]),
          footer: DigitCard(
            margin: const EdgeInsets.all(spacer2),
            children: [
            Center(child: DigitButton(label: 'Search User', onPressed: (){}, type: DigitButtonType.primary, size:DigitButtonSize.large )),
          ],) ,
          children: [
            ReactiveWrapperField(
              formControlName: _userName,
              validationMessages: {
                'required': (object) => 'Name is required',
              },
              builder: (field) => LabeledField(
                label: localizations.translate(
                  'user name'
                ),
                isRequired: true,
                child: DigitTextFormInput(
                  charCount: true,
                  maxLength: 200,
                  errorMessage: field.errorText,
                  onChange: (value) {
                    formGroup.control(_userName).value = value;
                  },
                  initialValue: formGroup.control(_userName).value,
                ),
              ),
            ),

          ],
        ),
      )


      // Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: Column(
      //     children: [
      //       TextField(
      //         controller: _searchController,
      //         decoration: const InputDecoration(
      //           labelText: "Search by Username",
      //         ),
      //         onSubmitted: (_) => _performSearch(context),
      //       ),
      //       const SizedBox(height: 16),
      //       ElevatedButton(
      //         onPressed: () => _performSearch(context),
      //         child: const Text('Search'),
      //       ),
      //       const SizedBox(height: 24),
      //       Expanded(
      //         child: BlocBuilder<HrmsBloc, HrmsState>(
      //           builder: (context, state) {
      //             if (state is HrmsInitial) {
      //               return const Center(child: Text('Enter a username to search.'));
      //             } else if (state is HrmsLoading) {
      //               return const Center(child: CircularProgressIndicator());
      //             } else if (state is HrmsLoaded) {
      //               if (state.employees.isEmpty) {
      //                 return const Center(child: Text('No employees found.'));
      //               }
      //               return ListView.builder(
      //                 itemCount: state.employees.length,
      //                 itemBuilder: (context, index) {
      //                   final emp = state.employees[index];
      //                   return ListTile(
      //                     leading: const Icon(Icons.person),
      //                     title: Text(emp.user?.name ?? 'Unknown'),
      //                     subtitle: Text('Status: ${emp.employeeStatus ?? 'N/A'}'),
      //                   );
      //                 },
      //               );
      //             } else if (state is HrmsError) {
      //               return Center(child: Text('Error: ${state.message}'));
      //             } else {
      //               return const SizedBox.shrink();
      //             }
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  FormGroup buildForm() {
    return fb.group(<String, Object>{
      _userName: FormControl<String>(validators: [Validators.required]),
    });
  }
}
