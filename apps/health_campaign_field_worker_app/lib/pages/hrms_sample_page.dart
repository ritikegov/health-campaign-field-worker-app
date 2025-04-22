import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/entities/hrms.dart';
import '../blocs/hrmsBlock.dart';
import '../data/repositories/remote/hrms.dart';
import '../router/app_router.dart';

@RoutePage()
class SamplePage extends StatelessWidget {

  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HRMS Sample Page'),
        ),
        body: const HrmsBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final searchModel = EmployeeSearchModel(userName: 'AA174', tenantId: 'mz');
            context.read<HrmsBloc>().add(SearchEmployees(searchModel));
          },
          child: const Icon(Icons.search),
        ),
      );
  }
}

class HrmsBody extends StatelessWidget {
  const HrmsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HrmsBloc, HrmsState>(
      builder: (context, state) {
        if (state is HrmsInitial) {
          return const Center(child: Text('Press the search button to fetch employees.'));
        } else if (state is HrmsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HrmsLoaded) {
          if (state.employees.isEmpty) {
            return const Center(child: Text('No employees found.'));
          }
          return ListView.builder(
            itemCount: state.employees.length,
            itemBuilder: (context, index) {
              final emp = state.employees[index];
              return ListTile(
                leading: const Icon(Icons.person),
                title: Text(emp.user?.name ?? 'Unknown'),
                subtitle: Text('Status: ${emp.employeeStatus ?? 'N/A'}'),
              );
            },
          );
        } else if (state is HrmsError) {
          return Center(child: Text('Error: ${state.message}'));
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
