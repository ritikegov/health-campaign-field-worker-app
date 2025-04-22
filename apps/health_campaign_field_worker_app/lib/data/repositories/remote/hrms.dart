import 'package:dio/dio.dart';
import '../../../models/entities/hrms.dart';
import '../../../utils/environment_config.dart';

class HrmsRemoteRepository{
  final Dio dio;

  const HrmsRemoteRepository(this.dio);
  
//EmployeeModel
  Future<List<EmployeeModel>> searchEmployees(EmployeeSearchModel searchModel) async {
  final url = 'egov-hrms/employees/_search?tenantId=${envConfig.variables.tenantId}';
  final baseUrl = envConfig.variables.baseUrl;
  final optionsData = <String, String>{};

  final response = await dio.post('$baseUrl$url', data: optionsData, queryParameters: {
    'userName': searchModel.userName
  });

  if (response.statusCode == 200) {
    final data = response.data;

    
    final List<dynamic> employeeResponse = data['Employees'] ?? [];

    
    final List<EmployeeModel> employeeList =
        employeeResponse.map((e) => EmployeeModelMapper.fromMap(e)).toList();

    return employeeList;
  } else {
    throw Exception('Failed to search HRMS');
  }
}


  Future<dynamic> createEmployee(EmployeeModel employeeModel) async {
    final url = 'hrms/create';
    final baseUrl = envConfig.variables.baseUrl;
    if(url==null){
      throw Exception ("Create action not found for hrms");
    }
    final response = await dio.post(url,data:{
      "hrms":[employeeModel.toMap()]
    });
    if(response.statusCode ==200){
      final data = response.data['hrms'][0];
      return EmployeeModelMapper.fromMap(data);
    }
    else{
      throw Exception('failed to create hrms');
    }
  }
}