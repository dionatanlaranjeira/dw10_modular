import 'package:dw10_modular/src/modules/core/core_module.dart';
import 'package:dw10_modular/src/modules/home/home_page.dart';
import 'package:dw10_modular/src/modules/pessoa/pessoa_module.dart';
// import 'package:dw10_modular/src/repositories/pessoa/pessoa_repository.dart';
// import 'package:dw10_modular/src/repositories/pessoa/pessoa_repository_impl.dart';
// import 'package:dw10_modular/src/services/buscar_pessoa_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

// import '../../services/buscar_pessoa_service.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind.lazySingleton<PessoaRepository>((i) => PessoaRepositoryImpl()),
        // Bind.lazySingleton<BuscarPessoaService>((i) => BuscarPessoaService(pessoaRepository: i())),
      ];

  @override
  List<Module> get imports => [
        CoreModule(),
        PessoaModule()
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
