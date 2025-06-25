// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../Page/11_shopping_cart/pages/shopping_option_page/shopping_option_cubit.dart'
    as _i38;
import '../../../Page/11_shopping_cart/pages/shopping_page/shopping_cart_cubit.dart'
    as _i37;
import '../../../Page/12_naver_map/dio/naver_map_dio.dart' as _i13;
import '../../../Page/12_naver_map/page/NaverMapApp_cubit.dart' as _i47;
import '../../../Page/12_naver_map/service/naver_map_overlay.dart' as _i14;
import '../../../Page/12_naver_map/service/naver_map_service.dart' as _i34;
import '../../../Page/14_affiliated_store/dio/affiliated_dio.dart' as _i3;
import '../../../Page/14_affiliated_store/pages/affiliated_page/affiliated_store_cubit.dart'
    as _i44;
import '../../../Page/1_start_page/%08service/start_reomte_service.dart'
    as _i41;
import '../../../Page/1_start_page/page/start_cubit.dart' as _i49;
import '../../../Page/2_login_page/page/login_cubit.dart' as _i45;
import '../../../Page/2_login_page/service/login_remote_service.dart' as _i26;
import '../../../Page/3_student_email_page/page/student_email_cubit.dart'
    as _i50;
import '../../../Page/3_student_email_page/service/student_email_remote_service.dart'
    as _i43;
import '../../../Page/4_main_page/page/main_cubit.dart' as _i46;
import '../../../Page/4_main_page/service/main_page_service.dart' as _i9;
import '../../../Page/5_search_page/page/search_cubit.dart' as _i48;
import '../../../repository/affiliated_store_api/affiliated_store_remote_repository.dart'
    as _i20;
import '../../../repository/affiliated_store_api/affiliated_store_remote_service.dart'
    as _i21;
import '../../../repository/affiliated_store_api/affiliated_store_remote_source.dart'
    as _i4;
import '../../../repository/cart_api/cart_remote_repository.dart' as _i23;
import '../../../repository/cart_api/cart_reomte_service.dart' as _i24;
import '../../../repository/cart_api/cart_reomte_source.dart' as _i5;
import '../../../repository/login_api/login_remote_repository.dart' as _i25;
import '../../../repository/login_api/login_remote_source.dart' as _i8;
import '../../../repository/main_screen_api/main_screen_remote_repository.dart'
    as _i27;
import '../../../repository/main_screen_api/main_screen_remote_service.dart'
    as _i28;
import '../../../repository/main_screen_api/main_screen_remote_source.dart'
    as _i10;
import '../../../repository/menu_option_api/menu_option_remote_repository.dart'
    as _i29;
import '../../../repository/menu_option_api/menu_option_remote_service.dart'
    as _i30;
import '../../../repository/menu_option_api/menu_option_remote_source.dart'
    as _i11;
import '../../../repository/naver_map_api/naver_map_local_source.dart' as _i32;
import '../../../repository/naver_map_api/naver_map_remote_repository.dart'
    as _i33;
import '../../../repository/naver_map_api/naver_map_remote_source.dart' as _i15;
import '../../../repository/search_api/search_remote_repository.dart' as _i35;
import '../../../repository/search_api/search_remote_service.dart' as _i36;
import '../../../repository/search_api/search_remote_source.dart' as _i17;
import '../../../repository/start_api/start_remote_local.dart' as _i39;
import '../../../repository/start_api/start_remote_repository.dart' as _i40;
import '../../../repository/start_api/start_reomte_source.dart' as _i18;
import '../../../repository/student_email_api/student_email_remote_repository.dart'
    as _i42;
import '../../../repository/student_email_api/student_email_remote_source.dart'
    as _i19;
import '../../isar/app_version/app_version_service.dart' as _i22;
import '../../isar/isar_init_service.dart' as _i6;
import '../../isar/naver_map/naver_map_category_service.dart' as _i12;
import '../../isar/naver_map/naver_map_data_service.dart' as _i31;
import '../../isar/naver_map/naver_map_version_service.dart' as _i16;
import '../service/location_service.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AffiliatedDio>(() => _i3.AffiliatedDio());
    gh.singleton<_i4.AffiliatedStoreRemoteSource>(
        () => _i4.AffiliatedStoreRemoteSource(gh<_i3.AffiliatedDio>()));
    gh.singleton<_i5.CartRemoteSource>(() => _i5.CartRemoteSource());
    gh.singleton<_i6.IsarInitService>(() => _i6.IsarInitService());
    gh.singleton<_i7.LocationService>(() => _i7.LocationService());
    gh.singleton<_i8.LoginRemoteSource>(() => const _i8.LoginRemoteSource());
    gh.factory<_i9.MainPageService>(() => _i9.MainPageService());
    gh.singleton<_i10.MainScreenRemoteSource>(
        () => _i10.MainScreenRemoteSource());
    gh.singleton<_i11.MenuOptionRemoteSource>(
        () => _i11.MenuOptionRemoteSource());
    gh.singleton<_i12.NaverMapCategoryService>(
        () => _i12.NaverMapCategoryService(gh<_i6.IsarInitService>()));
    gh.singleton<_i13.NaverMapDio>(() => _i13.NaverMapDio());
    gh.singleton<_i14.NaverMapOverlayService>(
        () => _i14.NaverMapOverlayService());
    gh.singleton<_i15.NaverMapRemoteSource>(
        () => _i15.NaverMapRemoteSource(gh<_i13.NaverMapDio>()));
    gh.singleton<_i16.NaverMapVersionService>(
        () => _i16.NaverMapVersionService(gh<_i6.IsarInitService>()));
    gh.factory<_i17.SearchRemoteSource>(() => _i17.SearchRemoteSource());
    gh.singleton<_i18.StartRemoteSource>(() => _i18.StartRemoteSource());
    gh.singleton<_i19.StudentEmailRemoteSource>(
        () => const _i19.StudentEmailRemoteSource());
    gh.singleton<_i20.AffiliatedStoreRemoteRepository>(() =>
        _i20.AffiliatedStoreRemoteRepository(
            gh<_i4.AffiliatedStoreRemoteSource>()));
    gh.singleton<_i21.AffiliatedStoreRemoteService>(() =>
        _i21.AffiliatedStoreRemoteService(
            gh<_i20.AffiliatedStoreRemoteRepository>()));
    gh.singleton<_i22.AppVersionService>(
        () => _i22.AppVersionService(gh<_i6.IsarInitService>()));
    gh.singleton<_i23.CartRemoteRepository>(
        () => _i23.CartRemoteRepository(gh<_i5.CartRemoteSource>()));
    gh.singleton<_i24.CartRemoteService>(
        () => _i24.CartRemoteService(gh<_i23.CartRemoteRepository>()));
    gh.singleton<_i25.LoginRemoteRepository>(
        () => _i25.LoginRemoteRepository(gh<_i8.LoginRemoteSource>()));
    gh.factory<_i26.LoginRemoteService>(
        () => _i26.LoginRemoteService(gh<_i25.LoginRemoteRepository>()));
    gh.singleton<_i27.MainScreenRemoteRepository>(() =>
        _i27.MainScreenRemoteRepository(gh<_i10.MainScreenRemoteSource>()));
    gh.singleton<_i28.MainScreenRemoteService>(() =>
        _i28.MainScreenRemoteService(gh<_i27.MainScreenRemoteRepository>()));
    gh.singleton<_i29.MenuOptionRemoteRepository>(() =>
        _i29.MenuOptionRemoteRepository(gh<_i11.MenuOptionRemoteSource>()));
    gh.singleton<_i30.MenuOptionRemoteService>(() =>
        _i30.MenuOptionRemoteService(gh<_i29.MenuOptionRemoteRepository>()));
    gh.singleton<_i31.NaverMapDataService>(() => _i31.NaverMapDataService(
          gh<_i6.IsarInitService>(),
          gh<_i16.NaverMapVersionService>(),
          gh<_i12.NaverMapCategoryService>(),
        ));
    gh.singleton<_i32.NaverMapLocalSource>(() => _i32.NaverMapLocalSource(
          gh<_i31.NaverMapDataService>(),
          gh<_i12.NaverMapCategoryService>(),
        ));
    gh.singleton<_i33.NaverMapRemoteRepository>(
        () => _i33.NaverMapRemoteRepository(
              gh<_i15.NaverMapRemoteSource>(),
              gh<_i32.NaverMapLocalSource>(),
            ));
    gh.singleton<_i34.NaverMapService>(
        () => _i34.NaverMapService(gh<_i33.NaverMapRemoteRepository>()));
    gh.factory<_i35.SearchRemoteRepository>(
        () => _i35.SearchRemoteRepository(gh<_i17.SearchRemoteSource>()));
    gh.factory<_i36.SearchRemoteService>(
        () => _i36.SearchRemoteService(gh<_i35.SearchRemoteRepository>()));
    gh.factory<_i37.ShoppingCartCubit>(
        () => _i37.ShoppingCartCubit(gh<_i24.CartRemoteService>()));
    gh.factory<_i38.ShoppingOptionCubit>(() => _i38.ShoppingOptionCubit(
          gh<_i24.CartRemoteService>(),
          gh<_i30.MenuOptionRemoteService>(),
        ));
    gh.singleton<_i39.StartRemoteLocal>(() => _i39.StartRemoteLocal(
          gh<_i22.AppVersionService>(),
          gh<_i16.NaverMapVersionService>(),
        ));
    gh.singleton<_i40.StartRemoteRepository>(() => _i40.StartRemoteRepository(
          gh<_i18.StartRemoteSource>(),
          gh<_i39.StartRemoteLocal>(),
        ));
    gh.singleton<_i41.StartRemoteService>(() => _i41.StartRemoteService(
          gh<_i40.StartRemoteRepository>(),
          gh<_i33.NaverMapRemoteRepository>(),
        ));
    gh.singleton<_i42.StudentEmailRemoteRepository>(() =>
        _i42.StudentEmailRemoteRepository(gh<_i19.StudentEmailRemoteSource>()));
    gh.factory<_i43.StudentEmailRemoteService>(() =>
        _i43.StudentEmailRemoteService(
            gh<_i42.StudentEmailRemoteRepository>()));
    gh.factory<_i44.AffiliatedStoreCubit>(() =>
        _i44.AffiliatedStoreCubit(gh<_i21.AffiliatedStoreRemoteService>())
          ..init());
    gh.factory<_i45.LoginCubit>(
        () => _i45.LoginCubit(gh<_i26.LoginRemoteService>()));
    gh.factory<_i46.MainCubit>(() => _i46.MainCubit(
          gh<_i28.MainScreenRemoteService>(),
          gh<_i36.SearchRemoteService>(),
        ));
    gh.factory<_i47.NaverMapCubit>(() => _i47.NaverMapCubit(
          gh<_i34.NaverMapService>(),
          gh<_i7.LocationService>(),
          gh<_i14.NaverMapOverlayService>(),
        ));
    gh.factory<_i48.SearchCubit>(
        () => _i48.SearchCubit(gh<_i36.SearchRemoteService>()));
    gh.factory<_i49.StartCubit>(
        () => _i49.StartCubit(gh<_i41.StartRemoteService>()));
    gh.factory<_i50.StudentEmailCubit>(
        () => _i50.StudentEmailCubit(gh<_i43.StudentEmailRemoteService>()));
    return this;
  }
}
