// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'hrms.dart';

class EmployeeSearchModelMapper extends ClassMapperBase<EmployeeSearchModel> {
  EmployeeSearchModelMapper._();

  static EmployeeSearchModelMapper? _instance;
  static EmployeeSearchModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmployeeSearchModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EmployeeSearchModel';

  static String? _$codes(EmployeeSearchModel v) => v.codes;
  static const Field<EmployeeSearchModel, String> _f$codes =
      Field('codes', _$codes, opt: true);
  static String? _$tenantId(EmployeeSearchModel v) => v.tenantId;
  static const Field<EmployeeSearchModel, String> _f$tenantId =
      Field('tenantId', _$tenantId, opt: true);

  @override
  final MappableFields<EmployeeSearchModel> fields = const {
    #codes: _f$codes,
    #tenantId: _f$tenantId,
  };
  @override
  final bool ignoreNull = true;

  static EmployeeSearchModel _instantiate(DecodingData data) {
    return EmployeeSearchModel.ignoreDeleted(
        codes: data.dec(_f$codes), tenantId: data.dec(_f$tenantId));
  }

  @override
  final Function instantiate = _instantiate;

  static EmployeeSearchModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmployeeSearchModel>(map);
  }

  static EmployeeSearchModel fromJson(String json) {
    return ensureInitialized().decodeJson<EmployeeSearchModel>(json);
  }
}

mixin EmployeeSearchModelMappable {
  String toJson() {
    return EmployeeSearchModelMapper.ensureInitialized()
        .encodeJson<EmployeeSearchModel>(this as EmployeeSearchModel);
  }

  Map<String, dynamic> toMap() {
    return EmployeeSearchModelMapper.ensureInitialized()
        .encodeMap<EmployeeSearchModel>(this as EmployeeSearchModel);
  }

  EmployeeSearchModelCopyWith<EmployeeSearchModel, EmployeeSearchModel,
          EmployeeSearchModel>
      get copyWith => _EmployeeSearchModelCopyWithImpl(
          this as EmployeeSearchModel, $identity, $identity);
  @override
  String toString() {
    return EmployeeSearchModelMapper.ensureInitialized()
        .stringifyValue(this as EmployeeSearchModel);
  }

  @override
  bool operator ==(Object other) {
    return EmployeeSearchModelMapper.ensureInitialized()
        .equalsValue(this as EmployeeSearchModel, other);
  }

  @override
  int get hashCode {
    return EmployeeSearchModelMapper.ensureInitialized()
        .hashValue(this as EmployeeSearchModel);
  }
}

extension EmployeeSearchModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EmployeeSearchModel, $Out> {
  EmployeeSearchModelCopyWith<$R, EmployeeSearchModel, $Out>
      get $asEmployeeSearchModel =>
          $base.as((v, t, t2) => _EmployeeSearchModelCopyWithImpl(v, t, t2));
}

abstract class EmployeeSearchModelCopyWith<$R, $In extends EmployeeSearchModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? codes, String? tenantId});
  EmployeeSearchModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _EmployeeSearchModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmployeeSearchModel, $Out>
    implements EmployeeSearchModelCopyWith<$R, EmployeeSearchModel, $Out> {
  _EmployeeSearchModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmployeeSearchModel> $mapper =
      EmployeeSearchModelMapper.ensureInitialized();
  @override
  $R call({Object? codes = $none, Object? tenantId = $none}) =>
      $apply(FieldCopyWithData({
        if (codes != $none) #codes: codes,
        if (tenantId != $none) #tenantId: tenantId
      }));
  @override
  EmployeeSearchModel $make(CopyWithData data) =>
      EmployeeSearchModel.ignoreDeleted(
          codes: data.get(#codes, or: $value.codes),
          tenantId: data.get(#tenantId, or: $value.tenantId));

  @override
  EmployeeSearchModelCopyWith<$R2, EmployeeSearchModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _EmployeeSearchModelCopyWithImpl($value, $cast, t);
}

class EmployeeModelListMapper extends ClassMapperBase<EmployeeModelList> {
  EmployeeModelListMapper._();

  static EmployeeModelListMapper? _instance;
  static EmployeeModelListMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmployeeModelListMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EmployeeModelList';

  static List<EmployeeModel>? _$employees(EmployeeModelList v) => v.employees;
  static const Field<EmployeeModelList, List<EmployeeModel>> _f$employees =
      Field('employees', _$employees, key: 'Employees', opt: true);

  @override
  final MappableFields<EmployeeModelList> fields = const {
    #employees: _f$employees,
  };
  @override
  final bool ignoreNull = true;

  static EmployeeModelList _instantiate(DecodingData data) {
    return EmployeeModelList(employees: data.dec(_f$employees));
  }

  @override
  final Function instantiate = _instantiate;

  static EmployeeModelList fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmployeeModelList>(map);
  }

  static EmployeeModelList fromJson(String json) {
    return ensureInitialized().decodeJson<EmployeeModelList>(json);
  }
}

mixin EmployeeModelListMappable {
  String toJson() {
    return EmployeeModelListMapper.ensureInitialized()
        .encodeJson<EmployeeModelList>(this as EmployeeModelList);
  }

  Map<String, dynamic> toMap() {
    return EmployeeModelListMapper.ensureInitialized()
        .encodeMap<EmployeeModelList>(this as EmployeeModelList);
  }

  EmployeeModelListCopyWith<EmployeeModelList, EmployeeModelList,
          EmployeeModelList>
      get copyWith => _EmployeeModelListCopyWithImpl(
          this as EmployeeModelList, $identity, $identity);
  @override
  String toString() {
    return EmployeeModelListMapper.ensureInitialized()
        .stringifyValue(this as EmployeeModelList);
  }

  @override
  bool operator ==(Object other) {
    return EmployeeModelListMapper.ensureInitialized()
        .equalsValue(this as EmployeeModelList, other);
  }

  @override
  int get hashCode {
    return EmployeeModelListMapper.ensureInitialized()
        .hashValue(this as EmployeeModelList);
  }
}

extension EmployeeModelListValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EmployeeModelList, $Out> {
  EmployeeModelListCopyWith<$R, EmployeeModelList, $Out>
      get $asEmployeeModelList =>
          $base.as((v, t, t2) => _EmployeeModelListCopyWithImpl(v, t, t2));
}

abstract class EmployeeModelListCopyWith<$R, $In extends EmployeeModelList,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, EmployeeModel,
      EmployeeModelCopyWith<$R, EmployeeModel, EmployeeModel>>? get employees;
  $R call({List<EmployeeModel>? employees});
  EmployeeModelListCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _EmployeeModelListCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmployeeModelList, $Out>
    implements EmployeeModelListCopyWith<$R, EmployeeModelList, $Out> {
  _EmployeeModelListCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmployeeModelList> $mapper =
      EmployeeModelListMapper.ensureInitialized();
  @override
  ListCopyWith<$R, EmployeeModel,
          EmployeeModelCopyWith<$R, EmployeeModel, EmployeeModel>>?
      get employees => $value.employees != null
          ? ListCopyWith($value.employees!, (v, t) => v.copyWith.$chain(t),
              (v) => call(employees: v))
          : null;
  @override
  $R call({Object? employees = $none}) => $apply(
      FieldCopyWithData({if (employees != $none) #employees: employees}));
  @override
  EmployeeModelList $make(CopyWithData data) =>
      EmployeeModelList(employees: data.get(#employees, or: $value.employees));

  @override
  EmployeeModelListCopyWith<$R2, EmployeeModelList, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EmployeeModelListCopyWithImpl($value, $cast, t);
}

class EmployeeModelMapper extends ClassMapperBase<EmployeeModel> {
  EmployeeModelMapper._();

  static EmployeeModelMapper? _instance;
  static EmployeeModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmployeeModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EmployeeModel';

  static String? _$tenantId(EmployeeModel v) => v.tenantId;
  static const Field<EmployeeModel, String> _f$tenantId =
      Field('tenantId', _$tenantId, opt: true);
  static String? _$employeeStatus(EmployeeModel v) => v.employeeStatus;
  static const Field<EmployeeModel, String> _f$employeeStatus =
      Field('employeeStatus', _$employeeStatus, opt: true);
  static List<AssignmentModel>? _$assignments(EmployeeModel v) => v.assignments;
  static const Field<EmployeeModel, List<AssignmentModel>> _f$assignments =
      Field('assignments', _$assignments, opt: true);
  static String? _$code(EmployeeModel v) => v.code;
  static const Field<EmployeeModel, String> _f$code =
      Field('code', _$code, opt: true);
  static int? _$dateOfAppointment(EmployeeModel v) => v.dateOfAppointment;
  static const Field<EmployeeModel, int> _f$dateOfAppointment =
      Field('dateOfAppointment', _$dateOfAppointment, opt: true);
  static String? _$employeeType(EmployeeModel v) => v.employeeType;
  static const Field<EmployeeModel, String> _f$employeeType =
      Field('employeeType', _$employeeType, opt: true);
  static List<Jurisdictions>? _$jurisdictions(EmployeeModel v) =>
      v.jurisdictions;
  static const Field<EmployeeModel, List<Jurisdictions>> _f$jurisdictions =
      Field('jurisdictions', _$jurisdictions, opt: true);
  static User? _$user(EmployeeModel v) => v.user;
  static const Field<EmployeeModel, User> _f$user =
      Field('user', _$user, opt: true);

  @override
  final MappableFields<EmployeeModel> fields = const {
    #tenantId: _f$tenantId,
    #employeeStatus: _f$employeeStatus,
    #assignments: _f$assignments,
    #code: _f$code,
    #dateOfAppointment: _f$dateOfAppointment,
    #employeeType: _f$employeeType,
    #jurisdictions: _f$jurisdictions,
    #user: _f$user,
  };
  @override
  final bool ignoreNull = true;

  static EmployeeModel _instantiate(DecodingData data) {
    return EmployeeModel(
        tenantId: data.dec(_f$tenantId),
        employeeStatus: data.dec(_f$employeeStatus),
        assignments: data.dec(_f$assignments),
        code: data.dec(_f$code),
        dateOfAppointment: data.dec(_f$dateOfAppointment),
        employeeType: data.dec(_f$employeeType),
        jurisdictions: data.dec(_f$jurisdictions),
        user: data.dec(_f$user));
  }

  @override
  final Function instantiate = _instantiate;

  static EmployeeModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmployeeModel>(map);
  }

  static EmployeeModel fromJson(String json) {
    return ensureInitialized().decodeJson<EmployeeModel>(json);
  }
}

mixin EmployeeModelMappable {
  String toJson() {
    return EmployeeModelMapper.ensureInitialized()
        .encodeJson<EmployeeModel>(this as EmployeeModel);
  }

  Map<String, dynamic> toMap() {
    return EmployeeModelMapper.ensureInitialized()
        .encodeMap<EmployeeModel>(this as EmployeeModel);
  }

  EmployeeModelCopyWith<EmployeeModel, EmployeeModel, EmployeeModel>
      get copyWith => _EmployeeModelCopyWithImpl(
          this as EmployeeModel, $identity, $identity);
  @override
  String toString() {
    return EmployeeModelMapper.ensureInitialized()
        .stringifyValue(this as EmployeeModel);
  }

  @override
  bool operator ==(Object other) {
    return EmployeeModelMapper.ensureInitialized()
        .equalsValue(this as EmployeeModel, other);
  }

  @override
  int get hashCode {
    return EmployeeModelMapper.ensureInitialized()
        .hashValue(this as EmployeeModel);
  }
}

extension EmployeeModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EmployeeModel, $Out> {
  EmployeeModelCopyWith<$R, EmployeeModel, $Out> get $asEmployeeModel =>
      $base.as((v, t, t2) => _EmployeeModelCopyWithImpl(v, t, t2));
}

abstract class EmployeeModelCopyWith<$R, $In extends EmployeeModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, AssignmentModel,
          AssignmentModelCopyWith<$R, AssignmentModel, AssignmentModel>>?
      get assignments;
  ListCopyWith<$R, Jurisdictions,
          JurisdictionsCopyWith<$R, Jurisdictions, Jurisdictions>>?
      get jurisdictions;
  UserCopyWith<$R, User, User>? get user;
  $R call(
      {String? tenantId,
      String? employeeStatus,
      List<AssignmentModel>? assignments,
      String? code,
      int? dateOfAppointment,
      String? employeeType,
      List<Jurisdictions>? jurisdictions,
      User? user});
  EmployeeModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EmployeeModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmployeeModel, $Out>
    implements EmployeeModelCopyWith<$R, EmployeeModel, $Out> {
  _EmployeeModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmployeeModel> $mapper =
      EmployeeModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, AssignmentModel,
          AssignmentModelCopyWith<$R, AssignmentModel, AssignmentModel>>?
      get assignments => $value.assignments != null
          ? ListCopyWith($value.assignments!, (v, t) => v.copyWith.$chain(t),
              (v) => call(assignments: v))
          : null;
  @override
  ListCopyWith<$R, Jurisdictions,
          JurisdictionsCopyWith<$R, Jurisdictions, Jurisdictions>>?
      get jurisdictions => $value.jurisdictions != null
          ? ListCopyWith($value.jurisdictions!, (v, t) => v.copyWith.$chain(t),
              (v) => call(jurisdictions: v))
          : null;
  @override
  UserCopyWith<$R, User, User>? get user =>
      $value.user?.copyWith.$chain((v) => call(user: v));
  @override
  $R call(
          {Object? tenantId = $none,
          Object? employeeStatus = $none,
          Object? assignments = $none,
          Object? code = $none,
          Object? dateOfAppointment = $none,
          Object? employeeType = $none,
          Object? jurisdictions = $none,
          Object? user = $none}) =>
      $apply(FieldCopyWithData({
        if (tenantId != $none) #tenantId: tenantId,
        if (employeeStatus != $none) #employeeStatus: employeeStatus,
        if (assignments != $none) #assignments: assignments,
        if (code != $none) #code: code,
        if (dateOfAppointment != $none) #dateOfAppointment: dateOfAppointment,
        if (employeeType != $none) #employeeType: employeeType,
        if (jurisdictions != $none) #jurisdictions: jurisdictions,
        if (user != $none) #user: user
      }));
  @override
  EmployeeModel $make(CopyWithData data) => EmployeeModel(
      tenantId: data.get(#tenantId, or: $value.tenantId),
      employeeStatus: data.get(#employeeStatus, or: $value.employeeStatus),
      assignments: data.get(#assignments, or: $value.assignments),
      code: data.get(#code, or: $value.code),
      dateOfAppointment:
          data.get(#dateOfAppointment, or: $value.dateOfAppointment),
      employeeType: data.get(#employeeType, or: $value.employeeType),
      jurisdictions: data.get(#jurisdictions, or: $value.jurisdictions),
      user: data.get(#user, or: $value.user));

  @override
  EmployeeModelCopyWith<$R2, EmployeeModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EmployeeModelCopyWithImpl($value, $cast, t);
}

class AssignmentModelMapper extends ClassMapperBase<AssignmentModel> {
  AssignmentModelMapper._();

  static AssignmentModelMapper? _instance;
  static AssignmentModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AssignmentModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AssignmentModel';

  static int? _$fromDate(AssignmentModel v) => v.fromDate;
  static const Field<AssignmentModel, int> _f$fromDate =
      Field('fromDate', _$fromDate, opt: true);
  static bool? _$isCurrentAssignment(AssignmentModel v) =>
      v.isCurrentAssignment;
  static const Field<AssignmentModel, bool> _f$isCurrentAssignment =
      Field('isCurrentAssignment', _$isCurrentAssignment, opt: true);
  static String? _$department(AssignmentModel v) => v.department;
  static const Field<AssignmentModel, String> _f$department =
      Field('department', _$department, opt: true);
  static String? _$designation(AssignmentModel v) => v.designation;
  static const Field<AssignmentModel, String> _f$designation =
      Field('designation', _$designation, opt: true);

  @override
  final MappableFields<AssignmentModel> fields = const {
    #fromDate: _f$fromDate,
    #isCurrentAssignment: _f$isCurrentAssignment,
    #department: _f$department,
    #designation: _f$designation,
  };
  @override
  final bool ignoreNull = true;

  static AssignmentModel _instantiate(DecodingData data) {
    return AssignmentModel(
        fromDate: data.dec(_f$fromDate),
        isCurrentAssignment: data.dec(_f$isCurrentAssignment),
        department: data.dec(_f$department),
        designation: data.dec(_f$designation));
  }

  @override
  final Function instantiate = _instantiate;

  static AssignmentModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AssignmentModel>(map);
  }

  static AssignmentModel fromJson(String json) {
    return ensureInitialized().decodeJson<AssignmentModel>(json);
  }
}

mixin AssignmentModelMappable {
  String toJson() {
    return AssignmentModelMapper.ensureInitialized()
        .encodeJson<AssignmentModel>(this as AssignmentModel);
  }

  Map<String, dynamic> toMap() {
    return AssignmentModelMapper.ensureInitialized()
        .encodeMap<AssignmentModel>(this as AssignmentModel);
  }

  AssignmentModelCopyWith<AssignmentModel, AssignmentModel, AssignmentModel>
      get copyWith => _AssignmentModelCopyWithImpl(
          this as AssignmentModel, $identity, $identity);
  @override
  String toString() {
    return AssignmentModelMapper.ensureInitialized()
        .stringifyValue(this as AssignmentModel);
  }

  @override
  bool operator ==(Object other) {
    return AssignmentModelMapper.ensureInitialized()
        .equalsValue(this as AssignmentModel, other);
  }

  @override
  int get hashCode {
    return AssignmentModelMapper.ensureInitialized()
        .hashValue(this as AssignmentModel);
  }
}

extension AssignmentModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AssignmentModel, $Out> {
  AssignmentModelCopyWith<$R, AssignmentModel, $Out> get $asAssignmentModel =>
      $base.as((v, t, t2) => _AssignmentModelCopyWithImpl(v, t, t2));
}

abstract class AssignmentModelCopyWith<$R, $In extends AssignmentModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? fromDate,
      bool? isCurrentAssignment,
      String? department,
      String? designation});
  AssignmentModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AssignmentModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AssignmentModel, $Out>
    implements AssignmentModelCopyWith<$R, AssignmentModel, $Out> {
  _AssignmentModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AssignmentModel> $mapper =
      AssignmentModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? fromDate = $none,
          Object? isCurrentAssignment = $none,
          Object? department = $none,
          Object? designation = $none}) =>
      $apply(FieldCopyWithData({
        if (fromDate != $none) #fromDate: fromDate,
        if (isCurrentAssignment != $none)
          #isCurrentAssignment: isCurrentAssignment,
        if (department != $none) #department: department,
        if (designation != $none) #designation: designation
      }));
  @override
  AssignmentModel $make(CopyWithData data) => AssignmentModel(
      fromDate: data.get(#fromDate, or: $value.fromDate),
      isCurrentAssignment:
          data.get(#isCurrentAssignment, or: $value.isCurrentAssignment),
      department: data.get(#department, or: $value.department),
      designation: data.get(#designation, or: $value.designation));

  @override
  AssignmentModelCopyWith<$R2, AssignmentModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AssignmentModelCopyWithImpl($value, $cast, t);
}

class JurisdictionsMapper extends ClassMapperBase<Jurisdictions> {
  JurisdictionsMapper._();

  static JurisdictionsMapper? _instance;
  static JurisdictionsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JurisdictionsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Jurisdictions';

  static String? _$hierarchy(Jurisdictions v) => v.hierarchy;
  static const Field<Jurisdictions, String> _f$hierarchy =
      Field('hierarchy', _$hierarchy, opt: true);
  static String? _$boundaryType(Jurisdictions v) => v.boundaryType;
  static const Field<Jurisdictions, String> _f$boundaryType =
      Field('boundaryType', _$boundaryType, opt: true);
  static String? _$boundary(Jurisdictions v) => v.boundary;
  static const Field<Jurisdictions, String> _f$boundary =
      Field('boundary', _$boundary, opt: true);
  static String? _$tenantId(Jurisdictions v) => v.tenantId;
  static const Field<Jurisdictions, String> _f$tenantId =
      Field('tenantId', _$tenantId, opt: true);
  static List<Roles>? _$roles(Jurisdictions v) => v.roles;
  static const Field<Jurisdictions, List<Roles>> _f$roles =
      Field('roles', _$roles, opt: true);

  @override
  final MappableFields<Jurisdictions> fields = const {
    #hierarchy: _f$hierarchy,
    #boundaryType: _f$boundaryType,
    #boundary: _f$boundary,
    #tenantId: _f$tenantId,
    #roles: _f$roles,
  };
  @override
  final bool ignoreNull = true;

  static Jurisdictions _instantiate(DecodingData data) {
    return Jurisdictions(
        hierarchy: data.dec(_f$hierarchy),
        boundaryType: data.dec(_f$boundaryType),
        boundary: data.dec(_f$boundary),
        tenantId: data.dec(_f$tenantId),
        roles: data.dec(_f$roles));
  }

  @override
  final Function instantiate = _instantiate;

  static Jurisdictions fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Jurisdictions>(map);
  }

  static Jurisdictions fromJson(String json) {
    return ensureInitialized().decodeJson<Jurisdictions>(json);
  }
}

mixin JurisdictionsMappable {
  String toJson() {
    return JurisdictionsMapper.ensureInitialized()
        .encodeJson<Jurisdictions>(this as Jurisdictions);
  }

  Map<String, dynamic> toMap() {
    return JurisdictionsMapper.ensureInitialized()
        .encodeMap<Jurisdictions>(this as Jurisdictions);
  }

  JurisdictionsCopyWith<Jurisdictions, Jurisdictions, Jurisdictions>
      get copyWith => _JurisdictionsCopyWithImpl(
          this as Jurisdictions, $identity, $identity);
  @override
  String toString() {
    return JurisdictionsMapper.ensureInitialized()
        .stringifyValue(this as Jurisdictions);
  }

  @override
  bool operator ==(Object other) {
    return JurisdictionsMapper.ensureInitialized()
        .equalsValue(this as Jurisdictions, other);
  }

  @override
  int get hashCode {
    return JurisdictionsMapper.ensureInitialized()
        .hashValue(this as Jurisdictions);
  }
}

extension JurisdictionsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Jurisdictions, $Out> {
  JurisdictionsCopyWith<$R, Jurisdictions, $Out> get $asJurisdictions =>
      $base.as((v, t, t2) => _JurisdictionsCopyWithImpl(v, t, t2));
}

abstract class JurisdictionsCopyWith<$R, $In extends Jurisdictions, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Roles, RolesCopyWith<$R, Roles, Roles>>? get roles;
  $R call(
      {String? hierarchy,
      String? boundaryType,
      String? boundary,
      String? tenantId,
      List<Roles>? roles});
  JurisdictionsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JurisdictionsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Jurisdictions, $Out>
    implements JurisdictionsCopyWith<$R, Jurisdictions, $Out> {
  _JurisdictionsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Jurisdictions> $mapper =
      JurisdictionsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Roles, RolesCopyWith<$R, Roles, Roles>>? get roles =>
      $value.roles != null
          ? ListCopyWith($value.roles!, (v, t) => v.copyWith.$chain(t),
              (v) => call(roles: v))
          : null;
  @override
  $R call(
          {Object? hierarchy = $none,
          Object? boundaryType = $none,
          Object? boundary = $none,
          Object? tenantId = $none,
          Object? roles = $none}) =>
      $apply(FieldCopyWithData({
        if (hierarchy != $none) #hierarchy: hierarchy,
        if (boundaryType != $none) #boundaryType: boundaryType,
        if (boundary != $none) #boundary: boundary,
        if (tenantId != $none) #tenantId: tenantId,
        if (roles != $none) #roles: roles
      }));
  @override
  Jurisdictions $make(CopyWithData data) => Jurisdictions(
      hierarchy: data.get(#hierarchy, or: $value.hierarchy),
      boundaryType: data.get(#boundaryType, or: $value.boundaryType),
      boundary: data.get(#boundary, or: $value.boundary),
      tenantId: data.get(#tenantId, or: $value.tenantId),
      roles: data.get(#roles, or: $value.roles));

  @override
  JurisdictionsCopyWith<$R2, Jurisdictions, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _JurisdictionsCopyWithImpl($value, $cast, t);
}

class RolesMapper extends ClassMapperBase<Roles> {
  RolesMapper._();

  static RolesMapper? _instance;
  static RolesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RolesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Roles';

  static String? _$code(Roles v) => v.code;
  static const Field<Roles, String> _f$code = Field('code', _$code, opt: true);
  static String? _$name(Roles v) => v.name;
  static const Field<Roles, String> _f$name = Field('name', _$name, opt: true);
  static String? _$tenantId(Roles v) => v.tenantId;
  static const Field<Roles, String> _f$tenantId =
      Field('tenantId', _$tenantId, opt: true);

  @override
  final MappableFields<Roles> fields = const {
    #code: _f$code,
    #name: _f$name,
    #tenantId: _f$tenantId,
  };
  @override
  final bool ignoreNull = true;

  static Roles _instantiate(DecodingData data) {
    return Roles(
        code: data.dec(_f$code),
        name: data.dec(_f$name),
        tenantId: data.dec(_f$tenantId));
  }

  @override
  final Function instantiate = _instantiate;

  static Roles fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Roles>(map);
  }

  static Roles fromJson(String json) {
    return ensureInitialized().decodeJson<Roles>(json);
  }
}

mixin RolesMappable {
  String toJson() {
    return RolesMapper.ensureInitialized().encodeJson<Roles>(this as Roles);
  }

  Map<String, dynamic> toMap() {
    return RolesMapper.ensureInitialized().encodeMap<Roles>(this as Roles);
  }

  RolesCopyWith<Roles, Roles, Roles> get copyWith =>
      _RolesCopyWithImpl(this as Roles, $identity, $identity);
  @override
  String toString() {
    return RolesMapper.ensureInitialized().stringifyValue(this as Roles);
  }

  @override
  bool operator ==(Object other) {
    return RolesMapper.ensureInitialized().equalsValue(this as Roles, other);
  }

  @override
  int get hashCode {
    return RolesMapper.ensureInitialized().hashValue(this as Roles);
  }
}

extension RolesValueCopy<$R, $Out> on ObjectCopyWith<$R, Roles, $Out> {
  RolesCopyWith<$R, Roles, $Out> get $asRoles =>
      $base.as((v, t, t2) => _RolesCopyWithImpl(v, t, t2));
}

abstract class RolesCopyWith<$R, $In extends Roles, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? code, String? name, String? tenantId});
  RolesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RolesCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Roles, $Out>
    implements RolesCopyWith<$R, Roles, $Out> {
  _RolesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Roles> $mapper = RolesMapper.ensureInitialized();
  @override
  $R call(
          {Object? code = $none,
          Object? name = $none,
          Object? tenantId = $none}) =>
      $apply(FieldCopyWithData({
        if (code != $none) #code: code,
        if (name != $none) #name: name,
        if (tenantId != $none) #tenantId: tenantId
      }));
  @override
  Roles $make(CopyWithData data) => Roles(
      code: data.get(#code, or: $value.code),
      name: data.get(#name, or: $value.name),
      tenantId: data.get(#tenantId, or: $value.tenantId));

  @override
  RolesCopyWith<$R2, Roles, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RolesCopyWithImpl($value, $cast, t);
}

class UserMapper extends ClassMapperBase<User> {
  UserMapper._();

  static UserMapper? _instance;
  static UserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'User';

  static String? _$mobileNumber(User v) => v.mobileNumber;
  static const Field<User, String> _f$mobileNumber =
      Field('mobileNumber', _$mobileNumber, opt: true);
  static String? _$name(User v) => v.name;
  static const Field<User, String> _f$name = Field('name', _$name, opt: true);
  static String? _$correspondenceAddress(User v) => v.correspondenceAddress;
  static const Field<User, String> _f$correspondenceAddress =
      Field('correspondenceAddress', _$correspondenceAddress, opt: true);
  static String? _$emailId(User v) => v.emailId;
  static const Field<User, String> _f$emailId =
      Field('emailId', _$emailId, opt: true);
  static String? _$gender(User v) => v.gender;
  static const Field<User, String> _f$gender =
      Field('gender', _$gender, opt: true);
  static int? _$dob(User v) => v.dob;
  static const Field<User, int> _f$dob = Field('dob', _$dob, opt: true);
  static List<Roles>? _$roles(User v) => v.roles;
  static const Field<User, List<Roles>> _f$roles =
      Field('roles', _$roles, opt: true);
  static String? _$tenantId(User v) => v.tenantId;
  static const Field<User, String> _f$tenantId =
      Field('tenantId', _$tenantId, opt: true);
  static String? _$userName(User v) => v.userName;
  static const Field<User, String> _f$userName =
      Field('userName', _$userName, opt: true);
  static String? _$password(User v) => v.password;
  static const Field<User, String> _f$password =
      Field('password', _$password, opt: true);

  @override
  final MappableFields<User> fields = const {
    #mobileNumber: _f$mobileNumber,
    #name: _f$name,
    #correspondenceAddress: _f$correspondenceAddress,
    #emailId: _f$emailId,
    #gender: _f$gender,
    #dob: _f$dob,
    #roles: _f$roles,
    #tenantId: _f$tenantId,
    #userName: _f$userName,
    #password: _f$password,
  };
  @override
  final bool ignoreNull = true;

  static User _instantiate(DecodingData data) {
    return User(
        mobileNumber: data.dec(_f$mobileNumber),
        name: data.dec(_f$name),
        correspondenceAddress: data.dec(_f$correspondenceAddress),
        emailId: data.dec(_f$emailId),
        gender: data.dec(_f$gender),
        dob: data.dec(_f$dob),
        roles: data.dec(_f$roles),
        tenantId: data.dec(_f$tenantId),
        userName: data.dec(_f$userName),
        password: data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;

  static User fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<User>(map);
  }

  static User fromJson(String json) {
    return ensureInitialized().decodeJson<User>(json);
  }
}

mixin UserMappable {
  String toJson() {
    return UserMapper.ensureInitialized().encodeJson<User>(this as User);
  }

  Map<String, dynamic> toMap() {
    return UserMapper.ensureInitialized().encodeMap<User>(this as User);
  }

  UserCopyWith<User, User, User> get copyWith =>
      _UserCopyWithImpl(this as User, $identity, $identity);
  @override
  String toString() {
    return UserMapper.ensureInitialized().stringifyValue(this as User);
  }

  @override
  bool operator ==(Object other) {
    return UserMapper.ensureInitialized().equalsValue(this as User, other);
  }

  @override
  int get hashCode {
    return UserMapper.ensureInitialized().hashValue(this as User);
  }
}

extension UserValueCopy<$R, $Out> on ObjectCopyWith<$R, User, $Out> {
  UserCopyWith<$R, User, $Out> get $asUser =>
      $base.as((v, t, t2) => _UserCopyWithImpl(v, t, t2));
}

abstract class UserCopyWith<$R, $In extends User, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Roles, RolesCopyWith<$R, Roles, Roles>>? get roles;
  $R call(
      {String? mobileNumber,
      String? name,
      String? correspondenceAddress,
      String? emailId,
      String? gender,
      int? dob,
      List<Roles>? roles,
      String? tenantId,
      String? userName,
      String? password});
  UserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, User, $Out>
    implements UserCopyWith<$R, User, $Out> {
  _UserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<User> $mapper = UserMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Roles, RolesCopyWith<$R, Roles, Roles>>? get roles =>
      $value.roles != null
          ? ListCopyWith($value.roles!, (v, t) => v.copyWith.$chain(t),
              (v) => call(roles: v))
          : null;
  @override
  $R call(
          {Object? mobileNumber = $none,
          Object? name = $none,
          Object? correspondenceAddress = $none,
          Object? emailId = $none,
          Object? gender = $none,
          Object? dob = $none,
          Object? roles = $none,
          Object? tenantId = $none,
          Object? userName = $none,
          Object? password = $none}) =>
      $apply(FieldCopyWithData({
        if (mobileNumber != $none) #mobileNumber: mobileNumber,
        if (name != $none) #name: name,
        if (correspondenceAddress != $none)
          #correspondenceAddress: correspondenceAddress,
        if (emailId != $none) #emailId: emailId,
        if (gender != $none) #gender: gender,
        if (dob != $none) #dob: dob,
        if (roles != $none) #roles: roles,
        if (tenantId != $none) #tenantId: tenantId,
        if (userName != $none) #userName: userName,
        if (password != $none) #password: password
      }));
  @override
  User $make(CopyWithData data) => User(
      mobileNumber: data.get(#mobileNumber, or: $value.mobileNumber),
      name: data.get(#name, or: $value.name),
      correspondenceAddress:
          data.get(#correspondenceAddress, or: $value.correspondenceAddress),
      emailId: data.get(#emailId, or: $value.emailId),
      gender: data.get(#gender, or: $value.gender),
      dob: data.get(#dob, or: $value.dob),
      roles: data.get(#roles, or: $value.roles),
      tenantId: data.get(#tenantId, or: $value.tenantId),
      userName: data.get(#userName, or: $value.userName),
      password: data.get(#password, or: $value.password));

  @override
  UserCopyWith<$R2, User, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserCopyWithImpl($value, $cast, t);
}
