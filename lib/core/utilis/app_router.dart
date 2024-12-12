import 'package:gdg_task_medical/features/home/presentation/views/category_details_view.dart';
import 'package:gdg_task_medical/features/home/presentation/views/home_view.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/all_product_details_view.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/navigation_bar_widget.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentaion/views/splash_view.dart';

abstract class AppRouter{
  static const kSplashView='/splashView';
  static const kHomeView = '/homeView';
  static const kNavigationBarWidget = '/navigationBarWidget';
  static const kCategoryDetails = '/categoryDetails';
  static const kAllProductDetailsView = '/allProductDetailsView';




  static final router = GoRouter(
    routes: [
    GoRoute(
    path: '/',
    builder: (context, state) => const SplashView(),

  ),
      GoRoute(
  path: kHomeView,
  builder: (context, state) =>  const HomeView(),
  ),
      GoRoute(
        path: kNavigationBarWidget,
        builder: (context, state) =>  const NavigationBarWidget(),
      ),
      GoRoute(
        path: kCategoryDetails,
        builder: (context, state) =>  const CategoryDetailsView(),
      ),
      GoRoute(
        path: kAllProductDetailsView,
        builder: (context, state) =>  const AllProductDetailsView(),
      ),
    ],
  );
}
