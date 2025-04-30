import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/entities/hrms.dart';
import '../data/repositories/remote/hrms.dart';

// -------------------- Events --------------------

abstract class HrmsEvent {}

class SearchEmployees extends HrmsEvent {
  final EmployeeSearchModel searchModel;
  SearchEmployees(this.searchModel);
}

class GetEmployeeDetails extends HrmsEvent {
  final String code;
  final String tenantId;
  GetEmployeeDetails(this.code, this.tenantId);
}

class CreateEmployeeEvent extends HrmsEvent {
  final EmployeeModel employee;
  CreateEmployeeEvent(this.employee);
}

// -------------------- States --------------------

abstract class HrmsState {}

class HrmsInitial extends HrmsState {}

class HrmsLoading extends HrmsState {}

class HrmsLoaded extends HrmsState {
  final List<EmployeeModel> employees;
  HrmsLoaded(this.employees);
}

class HrmsDetailLoaded extends HrmsState {
  final EmployeeModel employee;
  HrmsDetailLoaded(this.employee);
}

class HrmsCreated extends HrmsState {}

class HrmsError extends HrmsState {
  final String message;
  HrmsError(this.message);
}

// -------------------- BLoC --------------------

class HrmsBloc extends Bloc<HrmsEvent, HrmsState> {
  final HrmsRemoteRepository repository;

  HrmsBloc(this.repository) : super(HrmsInitial()) {
    on<SearchEmployees>((event, emit) async {
      emit(HrmsLoading());
      try {
        final list = await repository.getAllEmployees(event.searchModel);
        emit(HrmsLoaded(list));
      } catch (e) {
        emit(HrmsError(e.toString()));
      }
    });

    on<GetEmployeeDetails>((event, emit) async {
      emit(HrmsLoading());
      try {
        final emp =
            await repository.getEmployeeById(event.code, event.tenantId);
        emit(HrmsDetailLoaded(emp));
      } catch (e) {
        emit(HrmsError(e.toString()));
      }
    });

    // on<CreateEmployeeEvent>((event, emit) async {
    //   emit(HrmsLoading());
    //   try {
    //     await repository.createEmployee(event.employee);
    //     emit(HrmsCreated());
    //   } catch (e) {
    //     emit(HrmsError(e.toString()));
    //   }
    // });
    on<CreateEmployeeEvent>((event, emit) async {
      emit(HrmsLoading());
      try {
        final result = await repository.createEmployee(event.employee);
        if (result != null) {
          emit(HrmsCreated());
        } else {
          emit(HrmsError("Failed to create employee. Please try again."));
        }
      } catch (e) {
        emit(HrmsError("Exception: ${e.toString()}"));
      }
    });
  }
}
