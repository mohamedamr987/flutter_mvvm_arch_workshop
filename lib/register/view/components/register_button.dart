import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/register/viewModel/controller.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return RawMaterialButton(
      onPressed: () {
        cubit.register();
      },
      child: const Text('Register'),
    );
  }
}
