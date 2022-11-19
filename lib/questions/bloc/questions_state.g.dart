// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionsState extends QuestionsState {
  @override
  final bool? isSuccess;
  @override
  final bool? isLoading;
  @override
  final String? error;
  @override
  final QuestionsModel? questionsModel;

  factory _$QuestionsState([void Function(QuestionsStateBuilder)? updates]) =>
      (new QuestionsStateBuilder()..update(updates))._build();

  _$QuestionsState._(
      {this.isSuccess, this.isLoading, this.error, this.questionsModel})
      : super._();

  @override
  QuestionsState rebuild(void Function(QuestionsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsStateBuilder toBuilder() =>
      new QuestionsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsState &&
        isSuccess == other.isSuccess &&
        isLoading == other.isLoading &&
        error == other.error &&
        questionsModel == other.questionsModel;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isSuccess.hashCode), isLoading.hashCode),
            error.hashCode),
        questionsModel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionsState')
          ..add('isSuccess', isSuccess)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('questionsModel', questionsModel))
        .toString();
  }
}

class QuestionsStateBuilder
    implements Builder<QuestionsState, QuestionsStateBuilder> {
  _$QuestionsState? _$v;

  bool? _isSuccess;
  bool? get isSuccess => _$this._isSuccess;
  set isSuccess(bool? isSuccess) => _$this._isSuccess = isSuccess;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  QuestionsModel? _questionsModel;
  QuestionsModel? get questionsModel => _$this._questionsModel;
  set questionsModel(QuestionsModel? questionsModel) =>
      _$this._questionsModel = questionsModel;

  QuestionsStateBuilder();

  QuestionsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isSuccess = $v.isSuccess;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _questionsModel = $v.questionsModel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsState;
  }

  @override
  void update(void Function(QuestionsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionsState build() => _build();

  _$QuestionsState _build() {
    final _$result = _$v ??
        new _$QuestionsState._(
            isSuccess: isSuccess,
            isLoading: isLoading,
            error: error,
            questionsModel: questionsModel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
