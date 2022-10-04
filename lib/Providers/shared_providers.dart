import 'package:event_hub/repositories/api_repository.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiRepositoryProvider = Provider<ApiRepository>((ref) {
  return ApiRepository(client: GetIt.instance<Client>());
});
