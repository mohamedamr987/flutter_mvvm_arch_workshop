import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/register/viewModel/controller.dart';

import 'view/components/register_button.dart';
import 'view/components/register_text_fields_component.dart';
import 'view/widgets/register_text_field_widget.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
        ),
        body: const Column(
          children: [
            RegisterTextFieldsComponent(),
            RegisterButton(),
          ],
        ),
      ),
    );
  }
}
