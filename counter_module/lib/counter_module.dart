import 'package:counter_module/counter_bloc/counter_bloc.dart';
import 'package:counter_module/page/my_home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CounterModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((_) => CounterBloc()),
  ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => MyHomePage(),
        ),
      ];
}
