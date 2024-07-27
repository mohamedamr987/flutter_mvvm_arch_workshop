import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/widgets/loading_indicator.dart';
import 'package:project/core/widgets/show_snack_bar_widget.dart';
import 'package:project/main.dart';
import 'package:project/register/model/datasource/register_datasource.dart';
import 'package:project/register/viewModel/states.dart';

class RegisterCubit extends Cubit {
  RegisterCubit() : super(RegisterState);
  TextEditingController firstNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RegisterDataSource dataSource = RegisterDataSource();
  void register() async {
    if (formKey.currentState!.validate()) {
      LoadingIndicator.show();
      final result = await dataSource.registerUser(
        email: emailController.text,
        password: passwordController.text,
        name: firstNameController.text,
      );
      LoadingIndicator.hide();
      if (result == null) {
      } else {
        showSnackBar(
          result,
        );
      }
    }
  }
}
