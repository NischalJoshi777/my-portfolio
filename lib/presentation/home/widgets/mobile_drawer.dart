import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/presentation/home/scroll_cubit/scroll_cubit.dart';

import 'my_logo.dart';
import 'nav_bar.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Center(child: MyLogo()),
              const Divider(),
              ...navTitles.asMap().entries.map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        onPressed: () {
                          context.read<ScrollCubit>().jumpTo(e.key);
                          Navigator.pop(context);
                        },
                        child: ListTile(
                          leading: Icon(
                            navIcons[e.key],
                          ),
                          title: Text(
                            e.value,
                          ),
                        ),
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
