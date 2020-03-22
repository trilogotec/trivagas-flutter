import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trivagas_flutter/app.dart';

import 'containers/home_tabs/home_tabs_container.dart';
import 'containers/login/login_container.dart';
import 'containers/opportunities_details/opportunities_details_container.dart';
import 'containers/opportunities_list/opportunities_list_container.dart';
import 'containers/register/register_container.dart';
import 'containers/welcome/welcome_container.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router("/", child: (_, args) => WelcomeContainer()),
        Router("/login", child: (_, args) => LoginContainer()),
        Router("/register", child: (_, args) => RegisterContainer()),
        Router("/opportunities", child: (_, args) => HomeTabsContainer()),
        Router("/opportunities/:id",
            child: (_, args) =>
                OpportunitiesDetailsContainer(id: args.params['id'])),
      ];

  @override
  Widget get bootstrap => Application();
}
