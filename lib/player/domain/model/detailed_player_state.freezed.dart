// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detailed_player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailedPlayerState {
  AsyncSnapshot<DetailedPlayerDto>? get field =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedPlayerStateCopyWith<DetailedPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedPlayerStateCopyWith<$Res> {
  factory $DetailedPlayerStateCopyWith(
          DetailedPlayerState value, $Res Function(DetailedPlayerState) then) =
      _$DetailedPlayerStateCopyWithImpl<$Res>;
  $Res call({AsyncSnapshot<DetailedPlayerDto>? field});
}

/// @nodoc
class _$DetailedPlayerStateCopyWithImpl<$Res>
    implements $DetailedPlayerStateCopyWith<$Res> {
  _$DetailedPlayerStateCopyWithImpl(this._value, this._then);

  final DetailedPlayerState _value;
  // ignore: unused_field
  final $Res Function(DetailedPlayerState) _then;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<DetailedPlayerDto>?,
    ));
  }
}

/// @nodoc
abstract class _$$_DetailedPlayerStateCopyWith<$Res>
    implements $DetailedPlayerStateCopyWith<$Res> {
  factory _$$_DetailedPlayerStateCopyWith(_$_DetailedPlayerState value,
          $Res Function(_$_DetailedPlayerState) then) =
      __$$_DetailedPlayerStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncSnapshot<DetailedPlayerDto>? field});
}

/// @nodoc
class __$$_DetailedPlayerStateCopyWithImpl<$Res>
    extends _$DetailedPlayerStateCopyWithImpl<$Res>
    implements _$$_DetailedPlayerStateCopyWith<$Res> {
  __$$_DetailedPlayerStateCopyWithImpl(_$_DetailedPlayerState _value,
      $Res Function(_$_DetailedPlayerState) _then)
      : super(_value, (v) => _then(v as _$_DetailedPlayerState));

  @override
  _$_DetailedPlayerState get _value => super._value as _$_DetailedPlayerState;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_$_DetailedPlayerState(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<DetailedPlayerDto>?,
    ));
  }
}

/// @nodoc

class _$_DetailedPlayerState implements _DetailedPlayerState {
  const _$_DetailedPlayerState({this.field});

  @override
  final AsyncSnapshot<DetailedPlayerDto>? field;

  @override
  String toString() {
    return 'DetailedPlayerState(field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailedPlayerState &&
            const DeepCollectionEquality().equals(other.field, field));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field));

  @JsonKey(ignore: true)
  @override
  _$$_DetailedPlayerStateCopyWith<_$_DetailedPlayerState> get copyWith =>
      __$$_DetailedPlayerStateCopyWithImpl<_$_DetailedPlayerState>(
          this, _$identity);
}

abstract class _DetailedPlayerState implements DetailedPlayerState {
  const factory _DetailedPlayerState(
      {final AsyncSnapshot<DetailedPlayerDto>? field}) = _$_DetailedPlayerState;

  @override
  AsyncSnapshot<DetailedPlayerDto>? get field;
  @override
  @JsonKey(ignore: true)
  _$$_DetailedPlayerStateCopyWith<_$_DetailedPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}
