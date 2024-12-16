import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/widgets/index.dart';
import 'package:my_portfolio/presentation/home/scroll_cubit/scroll_cubit.dart';
import 'package:my_portfolio/presentation/home/widgets/body.dart';
import 'package:my_portfolio/presentation/home/widgets/mobile_drawer.dart';
import 'package:my_portfolio/presentation/home/widgets/nav_bar.dart';
import 'package:sizer/sizer.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sizer(
        builder: (context, orientation, deviceType) {
          return BlocProvider(
            create: (_) => ScrollCubit(),
            child: Builder(
              builder: (context) {
                return Scaffold(
                  appBar: PreferredSize(
                    preferredSize: const Size.fromHeight(68.0),
                    child: Builder(
                      builder: (context) {
                        return ResponsiveSize.isDesktop(context)
                            ? const NavBarDesktop()
                            : const NavBarTablet();
                      },
                    ),
                  ),
                  endDrawer: !ResponsiveSize.isDesktop(context)
                      ? const MobileDrawer()
                      : null,
                  body: LayoutBuilder(
                    builder: (context, _) {
                      return Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          gradient: Palette.grayBack,
                        ),
                        child: const Body(),
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
