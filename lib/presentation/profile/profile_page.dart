import 'package:florify/di/injection.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:florify/presentation/profile/components/not_registered_page.dart';
import 'package:florify/presentation/profile/profile_view.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit = locator<HomeCubit>();
        cubit.checkUser();
        return cubit;
      },
      child: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {},
        child: Buildable<HomeCubit, HomeState, HomeBuildableState>(
          properties: (buildable) => [buildable.user],
          builder: (context, state) {
            return state.user == null
                ? const NotRegisteredView()
                : ProfileView(
                    userModel: state.user!,
                  );
          },
        ),
      ),
    );
    // const ProfileView();
  }
}
