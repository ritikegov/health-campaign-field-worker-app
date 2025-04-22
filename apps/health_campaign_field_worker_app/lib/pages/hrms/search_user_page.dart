import 'package:attendance_management/widgets/localized.dart';
import 'package:digit_ui_components/digit_components.dart';
import 'package:digit_ui_components/widgets/atoms/table_cell.dart';
import 'package:digit_ui_components/widgets/molecules/digit_card.dart';
import 'package:digit_ui_components/widgets/molecules/digit_table.dart';
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
              Center(
                child: Column(
                  children: [
                    DigitButton(
                      mainAxisSize: MainAxisSize.max,
                      label: 'All User',
                      onPressed: () {
                        formGroup.markAllAsTouched();
                        if (!formGroup.valid) return;

                        final searchModel = EmployeeSearchModel(
                          tenantId: 'mz',
                        );

                        context.read<HrmsBloc>().add(SearchEmployees(searchModel));
                      },
                      type: DigitButtonType.secondary,
                      size: DigitButtonSize.large,
                    ),
                    DigitButton(
                      mainAxisSize: MainAxisSize.max,
                      label: 'Search User',
                      onPressed: () {
                        formGroup.markAllAsTouched();
                        if (!formGroup.valid) return;

                        final searchModel = EmployeeSearchModel(
                          codes: formGroup.control(_userName).value,
                          tenantId: 'mz',
                        );

                        context.read<HrmsBloc>().add(SearchEmployees(searchModel));
                      },
                      type: DigitButtonType.primary,
                      size: DigitButtonSize.large,
                    ),
                  ],
                ),
              ),
            ],
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ReactiveWrapperField(
                formControlName: _userName,
                validationMessages: {
                  'required': (object) => 'Name is required',
                },
                builder: (field) => LabeledField(
                  label: localizations.translate('user name'),
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
            ),
            BlocBuilder<HrmsBloc, HrmsState>(
              builder: (context, state) {
                if (state is HrmsLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is HrmsLoaded) {
                  final List<DigitTableColumn> tableHeaderList = [DigitTableColumn(header: "username", cellValue: "codes"),DigitTableColumn(header: "Mobile Number", cellValue: "mobileNumber"),DigitTableColumn(header: "Name", cellValue: "name")];
                  final List<DigitTableRow> tableData = state.employees.map((m)=> DigitTableRow(tableRow: [
                    DigitTableData(m.user?.userName ?? "", cellKey: "codes"),
                    DigitTableData(m.user?.mobileNumber.toString() ?? "", cellKey: "mobileNumber"),
                    DigitTableData(m.user?.name?? "", cellKey: "name")
                  ])).toList();
                  if (state.employees.isEmpty) {
                    return const Center(child: Text('No employees found.'));
                  }
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DigitTable(
                      scrollPhysics: (tableData.length) > 5
                          ? const ClampingScrollPhysics()
                          : const NeverScrollableScrollPhysics(),
                      rows: tableData,
                      columns: tableHeaderList,
                      tableHeight:250,
                      // MediaQuery.of(context).size.height*0.5,
                      showSelectedState: false,
                      showPagination: false,
                    ),
                  );
                  //   ListView.builder(
                  //   shrinkWrap: true,
                  //   physics: const NeverScrollableScrollPhysics(),
                  //   itemCount: state.employees.length,
                  //   itemBuilder: (context, index) {
                  //     final emp = state.employees[index];
                  //     return DigitCard(
                  //       margin: const EdgeInsets.symmetric(vertical: 4),
                  //       children: [
                  //         ListTile(
                  //           leading: const Icon(Icons.person),
                  //           title: Text(emp.user?.name ?? 'Unknown'),
                  //           subtitle: Text(
                  //             'Status: ${emp.employeeStatus ?? 'N/A'}',
                  //           ),
                  //         ),
                  //       ],
                  //     );
                  //   },
                  // );
                } else if (state is HrmsError) {
                  return Center(child: Text('Error: ${state.message}'));
                }
                return const SizedBox.shrink();
              },
            )
          ],
        ),
      ),
    );
  }

  FormGroup buildForm() {
    return fb.group(<String, Object>{
      _userName: FormControl<String>(),
    });
  }
}
