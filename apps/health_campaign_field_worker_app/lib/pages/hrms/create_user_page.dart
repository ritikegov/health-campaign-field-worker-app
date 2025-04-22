import 'package:digit_ui_components/enum/app_enums.dart';
import 'package:digit_ui_components/theme/spacers.dart';
import 'package:digit_ui_components/widgets/atoms/digit_button.dart';
import 'package:digit_ui_components/widgets/atoms/digit_text_form_input.dart';
import 'package:digit_ui_components/widgets/atoms/labelled_fields.dart';
import 'package:digit_ui_components/widgets/atoms/reactive_fields.dart';
import 'package:digit_ui_components/widgets/molecules/digit_card.dart';
import 'package:digit_ui_components/widgets/scrollable_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../blocs/hrmsBlock.dart';
import '../../models/entities/hrms.dart';
import '../../router/app_router.dart';
import '../../utils/environment_config.dart';

@RoutePage()
class CreateUserPage extends StatelessWidget {
  const CreateUserPage({super.key});

  static const _name = 'name';
  static const _email = 'email';

  FormGroup buildForm() => fb.group(<String, Object>{
        _name: FormControl<String>(validators: [Validators.required]),
        _email: FormControl<String>(
            validators: [Validators.required, Validators.email]),
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create User'),
      ),
      body: ReactiveFormBuilder(
        form: buildForm,
        builder: (context, form, _) => ScrollableContent(
          children: [
            DigitCard(
              margin: const EdgeInsets.all(spacer2),
              children: [
                ReactiveWrapperField(
                  formControlName: _name,
                  validationMessages: {
                    'required': (_) => 'Name is required',
                  },
                  builder: (field) => LabeledField(
                    label: 'Name',
                    isRequired: true,
                    child: DigitTextFormInput(
                      errorMessage: field.errorText,
                      onChange: (value) => form.control(_name).value = value,
                    ),
                  ),
                ),
                ReactiveWrapperField(
                  formControlName: _email,
                  validationMessages: {
                    'required': (_) => 'Email is required',
                    'email': (_) => 'Invalid email',
                  },
                  builder: (field) => LabeledField(
                    label: 'Email',
                    isRequired: true,
                    child: DigitTextFormInput(
                      errorMessage: field.errorText,
                      onChange: (value) => form.control(_email).value = value,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                DigitButton(
                  label: 'Submit',
                  type: DigitButtonType.primary,
                  onPressed: () {
                    form.markAllAsTouched();
                    if (!form.valid) return;

                    final user = User(
                      name: form.control(_name).value,
                      emailId: form.control(_email).value,
                      tenantId: envConfig.variables.tenantId,
                      userName: form.control(_email).value,
                      password: 'Default@123',
                    );

                    final employee = EmployeeModel(
                      tenantId: 'mz',
                      user: user,
                    );

                    context.read<HrmsBloc>().add(CreateEmployeeEvent(employee));
                  },
                  size: DigitButtonSize.large,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
