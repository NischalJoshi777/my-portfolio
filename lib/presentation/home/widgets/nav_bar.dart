import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/presentation/home/scroll_cubit/scroll_cubit.dart';
import 'package:my_portfolio/presentation/home/widgets/my_logo.dart';

List<IconData> navIcons = [
  Icons.home,
  Icons.handyman_outlined,
  Icons.apps,
  Icons.quick_contacts_mail,
];

List<String> navTitles = [
  'HOME',
  'SKILLS',
  'PROJECTS',
  'RECOMMENDATIONS',
];

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.darkBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: Row(
        children: [
          const MyLogo(),
          const Spacer(),
          ...navTitles
              .asMap()
              .entries
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextButton(
                    onPressed: () {
                      context.read<ScrollCubit>().jumpTo(e.key);
                    },
                    child: Text(e.value,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Palette.darkTextColor,
                            )),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}

class NavBarTablet extends StatelessWidget {
  final VoidCallback? onMenuTap;

  const NavBarTablet({
    Key? key,
    this.onMenuTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: const MyLogo(),
    );
  }
}
