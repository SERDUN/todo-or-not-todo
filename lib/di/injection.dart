import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'package:data/data.dart';
import 'package:domain/domain.dart';

import 'injection.config.dart';

@InjectableInit(
  throwOnMissingDependencies: false,
  externalPackageModulesAfter: [
    ExternalModule(DataPackageModule),
    ExternalModule(DomainPackageModule),
  ],
)
Future<GetIt> configureDependencies() async => GetIt.asNewInstance().init();

@module
abstract class RegisterModule {}
