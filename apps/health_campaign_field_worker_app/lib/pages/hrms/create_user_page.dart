import 'package:collection/collection.dart';
import 'package:digit_ui_components/digit_components.dart';
import 'package:digit_ui_components/enum/app_enums.dart';
import 'package:digit_ui_components/theme/spacers.dart';
import 'package:digit_ui_components/widgets/atoms/digit_button.dart';
import 'package:digit_ui_components/widgets/atoms/digit_password_form_input.dart';
import 'package:digit_ui_components/widgets/atoms/digit_text_form_input.dart';
import 'package:digit_ui_components/widgets/atoms/dropdown_wrapper.dart';
import 'package:digit_ui_components/widgets/atoms/input_wrapper.dart';
import 'package:digit_ui_components/widgets/atoms/labelled_fields.dart';
import 'package:digit_ui_components/widgets/atoms/reactive_fields.dart';
import 'package:digit_ui_components/widgets/molecules/digit_card.dart';
import 'package:digit_ui_components/widgets/scrollable_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../../utils/i18_key_constants.dart' as i18;
import '../../blocs/hrmsBlock.dart';
import '../../models/app_config/app_config_model.dart';
import '../../models/entities/hrms.dart';
import '../../router/app_router.dart';
import '../../utils/environment_config.dart';
import '../../utils/extensions/extensions.dart';
import '../../widgets/header/back_navigation_help_header.dart';
import '../../widgets/localized.dart';

@RoutePage()
class CreateUserPage extends LocalizedStatefulWidget {
  const CreateUserPage({super.key});

  @override
  State<CreateUserPage> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends LocalizedState<CreateUserPage> {
  List<Map<String, Object>> deparmentList = [
    {
      "id": 13,
      "code": "OTHER",
      "name": "OTHER",
      "active": true,
      "tenantId": "mz"
    },
    {
      "id": 12,
      "code": "MISAU",
      "name": "MISAU",
      "active": true,
      "tenantId": "mz"
    },
    {
      "id": 11,
      "code": "eGov",
      "name": "eGov",
      "active": true,
      "tenantId": "mz"
    },
    {
      "id": 10,
      "code": "CHAI",
      "name": "CHAI",
      "active": true,
      "tenantId": "mz"
    },
    {"id": 9, "code": "FH", "name": "FH", "active": true, "tenantId": "mz"},
    {"id": 8, "code": "FDC", "name": "FDC", "active": true, "tenantId": "mz"},
    {"id": 7, "code": "ADPP", "name": "ADPP", "active": true, "tenantId": "mz"},
    {
      "id": 6,
      "code": "Visao Mundial",
      "name": "Visao Mundial",
      "active": true,
      "tenantId": "mz"
    },
    {"id": 5, "code": "DPS", "name": "DPS", "active": true, "tenantId": "mz"},
    {"id": 4, "code": "SPS", "name": "SPS", "active": true, "tenantId": "mz"},
    {"id": 3, "code": "DICT", "name": "DICT", "active": true, "tenantId": "mz"},
    {"id": 2, "code": "DHI", "name": "DHI", "active": true, "tenantId": "mz"},
    {"id": 1, "code": "NMCP", "name": "NMCP", "active": true, "tenantId": "mz"}
  ];
  List<Map<String, Object>> employeeTypeList = [
    {"code": "PERMANENT", "name": "PERMANENT", "active": true},
    {"code": "CONTRACT", "name": "CONTRACT", "active": true}
  ];

  List<Map<String, Object>> roleList = [
    {"code": "DISTRIBUTOR", "name": "DISTRIBUTOR", "active": true},
    {"code": "WAREHOUSE_MANAGER", "name": "WAREHOUSE_MANAGER", "active": true},
    {
      "code": "HEALTH_FACILITY_WORKER",
      "name": "HEALTH_FACILITY_WORKER",
      "active": true
    },
    {
      "code": "CAMPAIGN SUPERVISOR",
      "name": "CAMPAIGN SUPERVISOR",
      "active": true
    },
    {
      "code": "PROXIMITY SUPERVISOR",
      "name": "PROXIMITY SUPERVISOR",
      "active": true
    },
    {"code": "PGR ADMINISTRATOR", "name": "PGR ADMINISTRATOR", "active": true},
    {"code": "COMMUNITY CREATOR", "name": "COMMUNITY CREATOR", "active": true},
    {"code": "MICROPLAN ADMIN", "name": "MICROPLAN ADMIN", "active": true}
  ];

  List<Map<String, Object>> designationList = [
    {
      "code": "Superintending Engineer ( B&R)",
      "name": "Superintending Engineer ( B&R)",
      "description": "Superintending Engineer ( B&R)",
      "active": true
    },
    {
      "name": "Corporation Engineer (B&R)",
      "code": "Corporation Engineer (B&R)",
      "active": true
    },
    {
      "name": "Asst. Engineer ( B&R)",
      "code": "Asst. Engineer ( B&R)",
      "active": true
    },
    {
      "name": "Junior Engineer ( B&R)",
      "code": "Junior Engineer ( B&R)",
      "active": true
    },
    {
      "name": "Land Scape Officer",
      "code": "Land Scape Officer",
      "active": true
    },
    {
      "name": "Superintending Engineer ( O&M)",
      "code": "Superintending Engineer ( O&M)",
      "active": true
    },
    {
      "name": "Corporation Engineer (O&M)",
      "code": "Corporation Engineer (O&M)",
      "active": true
    },
    {
      "name": "Asst. Engineer ( O&M)",
      "code": "Asst. Engineer ( O&M)",
      "active": true
    },
    {
      "name": "Junior Engineer ( O&M)",
      "code": "Junior Engineer ( O&M)",
      "active": true
    },
    {
      "name": "Superintending Engineer ( Light)",
      "code": "Superintending Engineer ( Light)",
      "active": true
    },
    {
      "name": "Corporation Engineer (Light)",
      "code": "Corporation Engineer (Light)",
      "active": true
    },
    {
      "name": "Junior Engineer ( Light)",
      "code": "Junior Engineer ( Light)",
      "active": true
    },
    {"name": "Health Officer", "code": "Health Officer", "active": true},
    {"name": "Medical Officer", "code": "Medical Officer", "active": true},
    {
      "name": "Chief Sanitary Inspector",
      "code": "Mechanical Oversear",
      "active": true
    },
    {"name": "Sainitary Inspector", "code": "Clerk", "active": true},
    {"name": "Sainitary Supervisor", "code": "Accountant", "active": true},
    {
      "name": "Senior Town Planner",
      "code": "Senior Town Planner",
      "active": true
    },
    {
      "name": "Municipal Town Planner",
      "code": "Municipal Town Planner",
      "active": true
    },
    {
      "name": "Asst. Town Planner",
      "code": "Asst. Town Planner",
      "active": true
    },
    {
      "name": "Building Inspector",
      "code": "Building Inspector",
      "active": true
    },
    {
      "name": "Junior Enginer ( Horticulutre)",
      "code": "Junior Enginer ( Horticulutre)",
      "active": true
    },
    {
      "name": "Citizen service representative",
      "code": "Citizen service representative",
      "active": true
    },
    {
      "name": "Deputy Controller Finance and Accounts",
      "code": "Deputy Controller Finance and Accounts",
      "active": true
    },
    {"name": "Accountant", "code": "Accountant", "active": true},
    {
      "name": "Assistant Commissioner",
      "code": "Assistant Commissioner",
      "active": true
    },
    {"name": "Superintendent", "code": "Superintendent", "active": true},
    {"name": "Accounts Officer", "code": "Accounts Officer", "active": true},
    {"name": "Commissioner", "code": "Commissioner", "active": true}
  ];

  List<Map<String, Object>> genderType = [
    {"code": "MALE", "name": "MALE", "active": true},
    {"code": "FEMALE", "name": "FEMALE", "active": true},
    {"code": "TRANSGENDER", "name": "TRANSGENDER", "active": false},
    {"code": "OTHERS", "name": "OTHERS", "active": false}
  ];
  final _form = fb.group({
    'username': FormControl<String>(validators: [Validators.required]),
    'password': FormControl<String>(validators: [Validators.required]),
    'confirmPassword': FormControl<String>(validators: [Validators.required]),
    'name': FormControl<String>(validators: [Validators.required]),
    'mobile': FormControl<String>(),
    'gender': FormControl<String>(),
    'dob': FormControl<DateTime>(value: DateTime.now()),
    'email': FormControl<String>(),
    'address': FormControl<String>(),
    'employmentType': FormControl<String>(validators: [Validators.required]),
    'appointmentDate': FormControl<DateTime>(
        value: DateTime.now(), validators: [Validators.required]),
    'department': FormControl<String>(validators: [Validators.required]),
    'designation': FormControl<String>(validators: [Validators.required]),
    'roles': FormControl<String>(validators: [Validators.required]),
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: ReactiveForm(
        formGroup: _form,
        child: ScrollableContent(
          header: const Column(
            children: [
              BackNavigationHelpHeaderWidget(),
            ],
          ),
          footer: DigitCard(
            margin: const EdgeInsets.all(spacer2),
            children: [
              Center(
                child: BlocConsumer<HrmsBloc, HrmsState>(
                  listener: (context, state) {
                    if (state is HrmsCreated) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Employee Created Successfully')),
                      );
                    } else if (state is HrmsError) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Error: ${state.message}')),
                      );
                    }
                  },
                  builder: (context, state) {
                    return DigitButton(
                      mainAxisSize: MainAxisSize.max,
                      label: state is HrmsLoading ? 'Creating...' : 'Submit',
                      onPressed: () {
                        _form.markAllAsTouched();
                        if (_form.valid) {
                          try {
                            final userName =
                                _form.control('username').value as String?;
                            final password =
                                _form.control('password').value as String?;
                            final name = _form.control('name').value as String?;
                            final mobile =
                                _form.control('mobile').value as String?;
                            final gender =
                                _form.control('gender').value as String?;
                            final dobDateTime =
                                _form.control('dob').value as DateTime?;
                            final dob = dobDateTime?.millisecondsSinceEpoch;
                            final email =
                                _form.control('email').value as String?;
                            final address =
                                _form.control('address').value as String?;
                            final employmentType = _form
                                .control('employmentType')
                                .value as String?;
                            final appointmentDateTime = _form
                                .control('appointmentDate')
                                .value as DateTime?;
                            final appointmentDate =
                                appointmentDateTime?.millisecondsSinceEpoch;
                            final department =
                                _form.control('department').value as String?;
                            final designation =
                                _form.control('designation').value as String?;
                            final roles =
                                _form.control('roles').value as String?;

                            final employee = EmployeeModel(
                              code: userName,
                              tenantId: envConfig.variables.tenantId,
                              employeeType: employmentType,
                              dateOfAppointment: appointmentDate,
                              user: User(
                                tenantId: envConfig.variables.tenantId,
                                userName: userName,
                                password: password,
                                name: name,
                                mobileNumber: mobile,
                                gender: gender,
                                dob: dob,
                                emailId: email,
                                correspondenceAddress: address,
                                roles: <Roles>[
                                  Roles(
                                      code: roles,
                                      tenantId: envConfig.variables.tenantId,
                                      name: roles)
                                ],
                              ),
                              assignments: <AssignmentModel>[
                                AssignmentModel(
                                    department: department,
                                    designation: designation,
                                    fromDate: appointmentDate,
                                    isCurrentAssignment: true)
                              ],
                              jurisdictions: <Jurisdictions>[
                                Jurisdictions(
                                  tenantId: envConfig.variables.tenantId,
                                  hierarchy: envConfig.variables.tenantId,
                                  boundary: context.boundary.code,
                                  boundaryType: "VILLAGE",
                                  roles: <Roles>[
                                    Roles(
                                        code: roles,
                                        tenantId: envConfig.variables.tenantId,
                                        name: roles),
                                  ],
                                )
                              ],
                            );

                            context
                                .read<HrmsBloc>()
                                .add(CreateEmployeeEvent(employee));
                          } catch (e, stackTrace) {
                            debugPrint(
                                "Error during user creation: $e\n$stackTrace");
                            Toast.showToast(
                              context,
                              message:
                                  "Something went wrong. Please try again.",
                              type: ToastType.error,
                            );
                          }
                        } else {
                          Toast.showToast(context,
                              message: "Please check all fields",
                              type: ToastType.error);
                        }
                      },
                      type: DigitButtonType.primary,
                      size: DigitButtonSize.large,
                    );
                  },
                ),
              ),
            ],
          ),
          children: [
            _buildLoginDetails(theme),
            _buildPersonalDetails(theme),
            _buildEmployeeDetails(theme),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginDetails(ThemeData theme) => DigitCard(
        margin: const EdgeInsets.all(16),
        children: [
          Text('Login Details', style: theme.textTheme.headlineMedium),
          _buildTextField('username', 'Username'),
          _buildPasswordField('password', 'Password'),
          _buildPasswordField('confirmPassword', 'Confirm Password'),
        ],
      );

  Widget _buildPersonalDetails(ThemeData theme) => DigitCard(
        margin: const EdgeInsets.all(16),
        children: [
          Text('Personal Details', style: theme.textTheme.headlineMedium),
          _buildTextField('name', 'Name'),
          _buildTextField('mobile', 'Mobile Number'),
          // _buildDropdown('gender', 'Gender', ['Male', 'Female']),
          _buildDropdown(
              'gender',
              'Gender',
              genderType.map((gender) {
                return CommonMasterModel(
                  code: gender['code'].toString(),
                  name: gender['name'].toString(),
                  active: gender['active'] as bool,
                );
              }).toList()),
          _buildDobField('dob', 'Date of birth'),
          _buildTextField('email', 'Email'),
          _buildTextField('address', 'Correspondence Address'),
        ],
      );

  Widget _buildEmployeeDetails(ThemeData theme) => DigitCard(
        margin: const EdgeInsets.all(16),
        children: [
          Text('Employee Details', style: theme.textTheme.headlineMedium),
          _buildDropdown(
              'employmentType',
              'Employment Type',
              employeeTypeList.map((employmentType) {
                return CommonMasterModel(
                  code: employmentType['code'].toString(),
                  name: employmentType['name'].toString(),
                  active: employmentType['active'] as bool,
                );
              }).toList()),
          _buildDateField('appointmentDate', 'Appointment Date'),
          _buildDropdown(
              'department',
              'Department',
              deparmentList.map((department) {
                return CommonMasterModel(
                  code: department['code'].toString(),
                  name: department['name'].toString(),
                  active: department['active'] as bool,
                );
              }).toList()),
          // _buildDropdown('designation', 'Designation', [
          //   'Commissioner',
          //   'Accounts Officer',
          //   'Superintendent',
          //   'Assistant Commissioner',
          //   'Accountant',
          //   'Deputy Controller Finance and Accounts',
          //   'Citizen service representative'
          // ]),
          _buildDropdown(
              'designation',
              'Designation',
              designationList.map((designation) {
                return CommonMasterModel(
                  code: designation['code'].toString(),
                  name: designation['name'].toString(),
                  active: designation['active'] as bool,
                );
              }).toList()),

          _buildDropdown(
              'roles',
              'Roles Assigned',
              roleList.map((roles) {
                return CommonMasterModel(
                  code: roles['code'].toString(),
                  name: roles['name'].toString(),
                  active: roles['active'] as bool,
                );
              }).toList()),
        ],
      );

  Widget _buildTextField(String controlName, String label) {
    return ReactiveWrapperField(
      formControlName: controlName,
      builder: (field) => LabeledField(
        isRequired: true,
        label: label,
        child: DigitTextFormInput(
          errorMessage: field.errorText,
          onChange: (val) => _form.control(controlName).value = val,
        ),
      ),
    );
  }

  Widget _buildDateField(String controlname, String label) {
    return ReactiveWrapperField(
        formControlName: controlname,
        builder: (field) {
          return InputField(
            type: InputType.date,
            label: localizations.translate(
              label,
            ),
            confirmText: localizations.translate(
              i18.common.coreCommonOk,
            ),
            cancelText: localizations.translate(
              i18.common.coreCommonCancel,
            ),
            // initialValue: DateFormat('DD/MM/YY').format(field.control.value),
          );
        });
  }

  Widget _buildDobField(String controlName, String label) {
    return ReactiveWrapperField(
      formControlName: controlName,
      builder: (field) {
        final control = field.control;
        final hasError = control.invalid && control.touched;
        final errorText = () {
          if (control.hasError('required')) {
            return 'This field is required';
          }
          if (control.hasError('minAge')) {
            return 'Age must be at least 18 years old';
          }
          return null;
        }();
        final currentDate = DateTime.now();
        final lastDate =
            DateTime(currentDate.year - 18, currentDate.month, currentDate.day);
        final firstDate = DateTime(1900);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputField(
              type: InputType.date,
              label: localizations.translate(label),
              confirmText: localizations.translate(i18.common.coreCommonOk),
              cancelText: localizations.translate(i18.common.coreCommonCancel),
              errorMessage: hasError ? errorText : null,
              firstDate: firstDate,
              lastDate: lastDate,
              initialDate: lastDate,
            ),
          ],
        );
      },
    );
  }

  Widget _buildPasswordField(String controlName, String label) {
    return ReactiveWrapperField(
      formControlName: controlName,
      builder: (field) {
        final isConfirm = controlName == 'confirmPassword';

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabeledField(
              label: label,
              isRequired: true,
              child: DigitPasswordFormInput(
                errorMessage: field.errorText,
                onChange: (val) {
                  _form.control(controlName).value = val;

                  if (!isConfirm) {
                    // Password validation on input
                    final password = val ?? '';
                    final isValid =
                        RegExp(r'^(?=.*[A-Z])(?=.*[0-9])(?=.*[\W_]).{8,}$')
                            .hasMatch(password);

                    _form.control(controlName).setErrors(
                          isValid
                              ? <String, dynamic>{}
                              : {'invalidPassword': true},
                        );
                  } else {
                    // Confirm password match check
                    final confirmPassword = val ?? '';
                    final originalPassword =
                        _form.control('password').value ?? '';
                    _form.control(controlName).setErrors(
                          confirmPassword == originalPassword
                              ? {}
                              : {'notMatch': true},
                        );
                  }
                },
              ),
            ),
            if (!isConfirm &&
                _form.control(controlName).hasError('invalidPassword'))
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 12.0),
                child: Text(
                  'Password must be at least 8 characters and include an uppercase letter, number, and special character.',
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
            if (isConfirm && _form.control(controlName).hasError('notMatch'))
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 12.0),
                child: Text(
                  'Passwords do not match.',
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildDropdown(
    String controlName,
    String label,
    List<CommonMasterModel> items,
  ) {
    return ReactiveWrapperField(
      formControlName: controlName,
      builder: (field) {
        final selectedCode = field.control.value;
        final selectedItem = items
            .map((e) => DropdownItem(name: e.name.toString(), code: e.code))
            .firstWhere(
              (item) => item.code == selectedCode,
              orElse: () => const DropdownItem(name: '', code: '-'),
            );

        return LabeledField(
          label: label,
          isRequired: true,
          child: Dropdown(
            dropdownType: DropdownType.singleSelect,
            items: items
                .map((e) => DropdownItem(name: e.name.toString(), code: e.code))
                .toList(),
            selectedOption: selectedItem,
            onSelect: (val) => field.control.value = val.code,
            errorMessage: field.errorText,
          ),
        );
      },
    );
  }
}
