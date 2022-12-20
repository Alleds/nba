// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'players_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayersListState {
  AsyncSnapshot<Iterable<PlayerDto>>? get field =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayersListStateCopyWith<PlayersListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayersListStateCopyWith<$Res> {
  factory $PlayersListStateCopyWith(
          PlayersListState value, $Res Function(PlayersListState) then) =
      _$PlayersListStateCopyWithImpl<$Res>;
  $Res call({AsyncSnapshot<Iterable<PlayerDto>>? field});
}

/// @nodoc
class _$PlayersListStateCopyWithImpl<$Res>
    implements $PlayersListStateCopyWith<$Res> {
  _$PlayersListStateCopyWithImpl(this._value, this._then);

  final PlayersListState _value;
  // ignore: unused_field
  final $Res Function(PlayersListState) _then;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<Iterable<PlayerDto>>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PlayersListStateCopyWith<$Res>
    implements $PlayersListStateCopyWith<$Res> {
  factory _$$_PlayersListStateCopyWith(
          _$_PlayersListState value, $Res Function(_$_PlayersListState) then) =
      __$$_PlayersListStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncSnapshot<Iterable<PlayerDto>>? field});
}

/// @nodoc
class __$$_PlayersListStateCopyWithImpl<$Res>
    extends _$PlayersListStateCopyWithImpl<$Res>
    implements _$$_PlayersListStateCopyWith<$Res> {
  __$$_PlayersListStateCopyWithImpl(
      _$_PlayersListState _value, $Res Function(_$_PlayersListState) _then)
      : super(_value, (v) => _then(v as _$_PlayersListState));

  @override
  _$_PlayersListState get _value => super._value as _$_PlayersListState;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_$_PlayersListState(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<Iterable<PlayerDto>>?,
    ));
  }
}

/// @nodoc

class _$_PlayersListState implements _PlayersListState {
  const _$_PlayersListState({this.field});

  @override
  final AsyncSnapshot<Iterable<PlayerDto>>? field;

  @override
  String toString() {
    return 'PlayersListState(field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayersListState &&
            const DeepCollectionEquality().equals(other.field, field));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field));

  @JsonKey(ignore: true)
  @override
  _$$_PlayersListStateCopyWith<_$_PlayersListState> get copyWith =>
      __$$_PlayersListStateCopyWithImpl<_$_PlayersListState>(this, _$identity);
}

abstract class _PlayersListState implements PlayersListState {
  const factory _PlayersListState(
      {final AsyncSnapshot<Iterable<PlayerDto>>? field}) = _$_PlayersListState;

  @override
  AsyncSnapshot<Iterable<PlayerDto>>? get field;
  @override
  @JsonKey(ignore: true)
  _$$_PlayersListStateCopyWith<_$_PlayersListState> get copyWith =>
      throw _privateConstructorUsedError;
}
