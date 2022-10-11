// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovieList,
    required TResult Function(String query) getSearchMovieList,
    required TResult Function() home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMovieList,
    TResult Function(String query)? getSearchMovieList,
    TResult Function()? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovieList,
    TResult Function(String query)? getSearchMovieList,
    TResult Function()? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieList value) getMovieList,
    required TResult Function(GetSearchMovieList value) getSearchMovieList,
    required TResult Function(GetHome value) home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieList value)? getMovieList,
    TResult Function(GetSearchMovieList value)? getSearchMovieList,
    TResult Function(GetHome value)? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieList value)? getMovieList,
    TResult Function(GetSearchMovieList value)? getSearchMovieList,
    TResult Function(GetHome value)? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainActionCopyWith<$Res> {
  factory $MainActionCopyWith(
          MainAction value, $Res Function(MainAction) then) =
      _$MainActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainActionCopyWithImpl<$Res> implements $MainActionCopyWith<$Res> {
  _$MainActionCopyWithImpl(this._value, this._then);

  final MainAction _value;
  // ignore: unused_field
  final $Res Function(MainAction) _then;
}

/// @nodoc
abstract class _$$GetMovieListCopyWith<$Res> {
  factory _$$GetMovieListCopyWith(
          _$GetMovieList value, $Res Function(_$GetMovieList) then) =
      __$$GetMovieListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMovieListCopyWithImpl<$Res> extends _$MainActionCopyWithImpl<$Res>
    implements _$$GetMovieListCopyWith<$Res> {
  __$$GetMovieListCopyWithImpl(
      _$GetMovieList _value, $Res Function(_$GetMovieList) _then)
      : super(_value, (v) => _then(v as _$GetMovieList));

  @override
  _$GetMovieList get _value => super._value as _$GetMovieList;
}

/// @nodoc

class _$GetMovieList implements GetMovieList {
  const _$GetMovieList();

  @override
  String toString() {
    return 'MainAction.getMovieList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMovieList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovieList,
    required TResult Function(String query) getSearchMovieList,
    required TResult Function() home,
  }) {
    return getMovieList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMovieList,
    TResult Function(String query)? getSearchMovieList,
    TResult Function()? home,
  }) {
    return getMovieList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovieList,
    TResult Function(String query)? getSearchMovieList,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (getMovieList != null) {
      return getMovieList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieList value) getMovieList,
    required TResult Function(GetSearchMovieList value) getSearchMovieList,
    required TResult Function(GetHome value) home,
  }) {
    return getMovieList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieList value)? getMovieList,
    TResult Function(GetSearchMovieList value)? getSearchMovieList,
    TResult Function(GetHome value)? home,
  }) {
    return getMovieList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieList value)? getMovieList,
    TResult Function(GetSearchMovieList value)? getSearchMovieList,
    TResult Function(GetHome value)? home,
    required TResult orElse(),
  }) {
    if (getMovieList != null) {
      return getMovieList(this);
    }
    return orElse();
  }
}

abstract class GetMovieList implements MainAction {
  const factory GetMovieList() = _$GetMovieList;
}

/// @nodoc
abstract class _$$GetSearchMovieListCopyWith<$Res> {
  factory _$$GetSearchMovieListCopyWith(_$GetSearchMovieList value,
          $Res Function(_$GetSearchMovieList) then) =
      __$$GetSearchMovieListCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$$GetSearchMovieListCopyWithImpl<$Res>
    extends _$MainActionCopyWithImpl<$Res>
    implements _$$GetSearchMovieListCopyWith<$Res> {
  __$$GetSearchMovieListCopyWithImpl(
      _$GetSearchMovieList _value, $Res Function(_$GetSearchMovieList) _then)
      : super(_value, (v) => _then(v as _$GetSearchMovieList));

  @override
  _$GetSearchMovieList get _value => super._value as _$GetSearchMovieList;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$GetSearchMovieList(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSearchMovieList implements GetSearchMovieList {
  const _$GetSearchMovieList(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'MainAction.getSearchMovieList(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSearchMovieList &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$GetSearchMovieListCopyWith<_$GetSearchMovieList> get copyWith =>
      __$$GetSearchMovieListCopyWithImpl<_$GetSearchMovieList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovieList,
    required TResult Function(String query) getSearchMovieList,
    required TResult Function() home,
  }) {
    return getSearchMovieList(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMovieList,
    TResult Function(String query)? getSearchMovieList,
    TResult Function()? home,
  }) {
    return getSearchMovieList?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovieList,
    TResult Function(String query)? getSearchMovieList,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (getSearchMovieList != null) {
      return getSearchMovieList(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieList value) getMovieList,
    required TResult Function(GetSearchMovieList value) getSearchMovieList,
    required TResult Function(GetHome value) home,
  }) {
    return getSearchMovieList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieList value)? getMovieList,
    TResult Function(GetSearchMovieList value)? getSearchMovieList,
    TResult Function(GetHome value)? home,
  }) {
    return getSearchMovieList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieList value)? getMovieList,
    TResult Function(GetSearchMovieList value)? getSearchMovieList,
    TResult Function(GetHome value)? home,
    required TResult orElse(),
  }) {
    if (getSearchMovieList != null) {
      return getSearchMovieList(this);
    }
    return orElse();
  }
}

abstract class GetSearchMovieList implements MainAction {
  const factory GetSearchMovieList(final String query) = _$GetSearchMovieList;

  String get query;
  @JsonKey(ignore: true)
  _$$GetSearchMovieListCopyWith<_$GetSearchMovieList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeCopyWith<$Res> {
  factory _$$GetHomeCopyWith(_$GetHome value, $Res Function(_$GetHome) then) =
      __$$GetHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeCopyWithImpl<$Res> extends _$MainActionCopyWithImpl<$Res>
    implements _$$GetHomeCopyWith<$Res> {
  __$$GetHomeCopyWithImpl(_$GetHome _value, $Res Function(_$GetHome) _then)
      : super(_value, (v) => _then(v as _$GetHome));

  @override
  _$GetHome get _value => super._value as _$GetHome;
}

/// @nodoc

class _$GetHome implements GetHome {
  const _$GetHome();

  @override
  String toString() {
    return 'MainAction.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovieList,
    required TResult Function(String query) getSearchMovieList,
    required TResult Function() home,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMovieList,
    TResult Function(String query)? getSearchMovieList,
    TResult Function()? home,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovieList,
    TResult Function(String query)? getSearchMovieList,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieList value) getMovieList,
    required TResult Function(GetSearchMovieList value) getSearchMovieList,
    required TResult Function(GetHome value) home,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieList value)? getMovieList,
    TResult Function(GetSearchMovieList value)? getSearchMovieList,
    TResult Function(GetHome value)? home,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieList value)? getMovieList,
    TResult Function(GetSearchMovieList value)? getSearchMovieList,
    TResult Function(GetHome value)? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class GetHome implements MainAction {
  const factory GetHome() = _$GetHome;
}
