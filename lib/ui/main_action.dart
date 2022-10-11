import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_action.freezed.dart';

@freezed
class MainAction with _$MainAction {
  const factory MainAction.getMovieList() = GetMovieList;
  const factory MainAction.getSearchMovieList(String query) = GetSearchMovieList;
  const factory MainAction.home() = GetHome;
}