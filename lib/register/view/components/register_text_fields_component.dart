import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/register/view/widgets/register_text_field_widget.dart';
import 'package:project/register/viewModel/controller.dart';

class RegisterTextFieldsComponent extends StatelessWidget {
  const RegisterTextFieldsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          RegisterTextField(
            label: 'First Name',
            controller: cubit.firstNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your first name';
              }
              return null;
            },
          ),
          RegisterTextField(
            label: 'Email',
            controller: cubit.emailController,
          ),
          RegisterTextField(
            label: 'password',
            controller: cubit.passwordController,
          ),
        ],
      ),
    );
  }
}
