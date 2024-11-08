import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'drawer_state.dart';

class DrawerCubit extends Cubit<DrawerState> {
  DrawerCubit() : super(DrawerState());

  GlobalKey<ScaffoldState> get key => state.scaffoldKey;

  void openDrawer(){
    key.currentState?.openDrawer();
  }
}
