import 'package:flutter_bloc/flutter_bloc.dart';

enum AppNavigationState {
  home,
  category,
  news,
}

class AppNavigationCubit extends Cubit<AppNavigationState> {
  AppNavigationCubit() : super(AppNavigationState.home);

  void showHome() => emit(AppNavigationState.home);
  void showCategory() => emit(AppNavigationState.category);
  void showNews() => emit(AppNavigationState.news);
}
