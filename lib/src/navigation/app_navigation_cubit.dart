import 'package:flutter_bloc/flutter_bloc.dart';

enum AppNavigationState {
  home,
  category,
  news,
  detail,
}

class AppNavigationCubit extends Cubit<AppNavigationState> {
  AppNavigationCubit() : super(AppNavigationState.home);

  void showHome() => emit(AppNavigationState.home);
  void showCategory() => emit(AppNavigationState.category);
  void showNews() => emit(AppNavigationState.news);
  void showDetail() => emit(AppNavigationState.detail);
}
