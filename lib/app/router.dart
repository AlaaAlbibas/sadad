import 'package:auto_route/auto_route_annotations.dart';
import 'package:sadad/ui/views/home/home_view.dart';
import 'package:sadad/ui/views/processing/processing_view.dart';
import 'package:sadad/ui/views/wallet/wallet_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: WalletView, ),
    MaterialRoute(page: ProcessingView, ),
  ],
)
class $Router {}