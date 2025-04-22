import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/entities/hrms.dart';
import '../data/repositories/remote/hrms.dart';
import 'package:equatable/equatable.dart';

// -------------------- Events --------------------

abstract class HrmsEvent {}

class SearchEmployees extends HrmsEvent {
  final EmployeeSearchModel searchModel;

  SearchEmployees(this.searchModel);
}

class CreateEmployee extends HrmsEvent {
  final EmployeeModel employeeModel;

  CreateEmployee(this.employeeModel);
}


// -------------------- States --------------------

abstract class HrmsState {}

class HrmsInitial extends HrmsState {}

class HrmsLoading extends HrmsState {}

class HrmsLoaded extends HrmsState {
  final List<EmployeeModel> employees;

  HrmsLoaded(this.employees);
}

class HrmsEmployeeCreated extends HrmsState {
  final EmployeeModel employee;

  HrmsEmployeeCreated(this.employee);
}

class HrmsError extends HrmsState {
  final String message;

  HrmsError(this.message);
}


// -------------------- BLoC --------------------

class HrmsBloc extends Bloc<HrmsEvent, HrmsState> {
  final HrmsRemoteRepository repository;

  HrmsBloc(this.repository) : super(HrmsInitial()) {
    on<SearchEmployees>(_onSearchEmployees);
    on<CreateEmployee>(_onCreateEmployee);
  }

  Future<void> _onSearchEmployees(
    SearchEmployees event,
    Emitter<HrmsState> emit,
  ) async {
    emit(HrmsLoading());
    try {
      final employees = await repository.searchEmployees(event.searchModel);
      print('lock repository : $employees');
      emit(HrmsLoaded(employees));
    } catch (e) {
      print('Error during employee search:  $e');
      emit(HrmsError(e.toString()));
    }
  }

  Future<void> _onCreateEmployee(
    CreateEmployee event,
    Emitter<HrmsState> emit,
  ) async {
    emit(HrmsLoading());
    try {
      final employee = await repository.createEmployee(event.employeeModel);
      emit(HrmsEmployeeCreated(employee));
    } catch (e) {
      emit(HrmsError(e.toString()));
    }
  }
}
