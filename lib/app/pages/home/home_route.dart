// ignore_for_file: implementation_imports

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:fwc_album_app/app/pages/home/home_page.dart';
import 'package:fwc_album_app/app/repository/user/user_repository.dart';
import 'package:fwc_album_app/app/repository/user/user_repository_impl.dart';

class HomeRoute extends FlutterGetItPageRoute {
  const HomeRoute({super.key});

  @override
  List<Bind<Object>> get bindings {
    return [
      Bind.lazySingleton<UserRepository>(
        (i) => UserRepositoryImpl(dio: i()),
      ),
    ];
  }

  @override
  WidgetBuilder get page => (context) => const HomePage();
}
