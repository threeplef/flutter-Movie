import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie/data/model/movie.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default([]) List<Movie> movies,
  }) = _MainState;
}