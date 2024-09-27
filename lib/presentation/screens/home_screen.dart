import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_app/presentation/blocs/notifications/notifications_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.read<NotificationsBloc>().requestPermission();
              },
              icon: Icon(Icons.settings))
        ],
        title: context
            .select((NotificationsBloc bloc) => Text('${bloc.state.status}')),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 0,
      itemBuilder: (context, index) => ListTile(
        title: Text('Permiso $index'),
        subtitle: Text('Descripción del permiso $index'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
