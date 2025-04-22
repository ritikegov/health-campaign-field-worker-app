// Generated using mason. Do not modify by hand
import 'package:dart_mappable/dart_mappable.dart';

part 'hrms.mapper.dart';

@MappableClass(ignoreNull: true, discriminatorValue: MappableClass.useAsDefault)
class EmployeeSearchModel with EmployeeSearchModelMappable {
  final String? userName;
  final String? tenantId;

  EmployeeSearchModel({
    this.userName,
    this.tenantId
  }) : super();

  @MappableConstructor()
  EmployeeSearchModel.ignoreDeleted({
    this.userName,
    this.tenantId,
  }) : super();
}
@MappableClass(ignoreNull: true, discriminatorValue: MappableClass.useAsDefault)
class EmployeeModelList  with EmployeeModelListMappable {
  static const schemaName = 'Employee';

  // final String? tenantId;
  // final String? employeeStatus;
  @MappableField(key:"Employees")
  final List<EmployeeModel>? employees;

  EmployeeModelList({
    // this.tenantId,
    // this.employeeStatus,
    this.employees,

  }) : super();
  
}

@MappableClass(ignoreNull: true, discriminatorValue: MappableClass.useAsDefault)
class EmployeeModel  with EmployeeModelMappable {
  static const schemaName = 'Employee';

  final String? tenantId;
  final String? employeeStatus;
  final List<AssignmentModel>? assignments;
  final String? code;
  final int? dateOfAppointment;
  final String? employeeType;
  final List<Jurisdictions>? jurisdictions;
  final User? user;

  
  EmployeeModel({
    this.tenantId,
    this.employeeStatus,
    this.assignments,
    this.code,
    this.dateOfAppointment,
    this.employeeType,
    this.jurisdictions,
    this.user,

  }) : super();

}

@MappableClass(ignoreNull: true, discriminatorValue: MappableClass.useAsDefault)
class AssignmentModel  with AssignmentModelMappable {

  final int? fromDate;
  final bool? isCurrentAssignment;
  final String? department;
  final String? designation;

  AssignmentModel({
    this.fromDate,
    this.isCurrentAssignment,
    this.department,
    this.designation
  }):super();
}
@MappableClass(ignoreNull: true, discriminatorValue: MappableClass.useAsDefault)
class Jurisdictions with JurisdictionsMappable{
  final String? hierarchy;
  final String? boundaryType;
  final String? boundary;
  final String? tenantId;
  final List<Roles>? roles;

  Jurisdictions({
    this.hierarchy,
    this.boundaryType,
    this.boundary,
    this.tenantId,
    this.roles
  }):super();
}

@MappableClass(ignoreNull: true, discriminatorValue: MappableClass.useAsDefault)
class Roles with RolesMappable{
  final String? code;
  final String? name;
  final String? tenantId;

  Roles({
    this.code,
    this.name,
    this.tenantId
  }):super();
}

@MappableClass(ignoreNull: true, discriminatorValue: MappableClass.useAsDefault)
class User with UserMappable{
  final int? mobileNumber;
  final String? name;
  final String? correspondenceAddress;
  final String? emailId;
  final String? gender;
  final int? dob;
  final List<Roles>? roles;
  final String? tenantId;
  final String? userName;
  final String? password;

  User({
    this.mobileNumber,
    this.name,
    this.correspondenceAddress,
    this.emailId,
    this.gender,
    this.dob,
    this.roles,
    this.tenantId,
    this.userName,
    this.password
  }):super();
}


