import 'package:dio/dio.dart';
import '../../../models/entities/hrms.dart';
// import '../../../utils/environment_config.dart';

class HrmsRemoteRepository {
  final Dio _dio;

  const HrmsRemoteRepository(this._dio);

  Future<List<EmployeeModel>> getAllEmployees(
      EmployeeSearchModel searchModel) async {
    final optionsData = <String, String>{};
    final response = await _dio.post('/egov-hrms/employees/_search',
        queryParameters: searchModel.toMap(),
      data: optionsData
    );
    final result = EmployeeModelListMapper.fromMap(response.data);
    return result.employees ?? [];
  }

  Future<EmployeeModel> getEmployeeById(String code, String tenantId) async {
    final response = await _dio.post(
      'egov-hrms/employees/_search',
      data: {
        "code": [code],
        "tenantId": tenantId,
      },
    );
    final result = EmployeeModelListMapper.fromMap(response.data);
    return result.employees!.first;
  }

  // Future<EmployeeModelList?> createEmployee(EmployeeModel model) async {
  //   final body = {
  //     "Employees": [model.toMap()]
  //   };
  //   await _dio.post('egov-hrms/employees//_create', data: body);
  // }

  Future<EmployeeModelList?> createEmployee(EmployeeModel model) async {
    final body = {
      "Employees": [model.toMap()]
    };

    try {
      final response = await _dio.post('egov-hrms/employees/_create', data: body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        if (data != null && data['Employees'] != null) {
          return EmployeeModelList.fromJson(data); // Assuming EmployeeModelList takes the full response
        }
      }
      return null;
    } catch (e) {
      print('Error creating employee: $e');
      return null;
    }
  }
}
