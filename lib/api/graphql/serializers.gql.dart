import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:event_hub/api/graphql/create_user.data.gql.dart'
    show Gcreate_userData, Gcreate_userData_create_user;
import 'package:event_hub/api/graphql/create_user.req.gql.dart'
    show Gcreate_userReq;
import 'package:event_hub/api/graphql/create_user.var.gql.dart'
    show Gcreate_userVars;
import 'package:event_hub/api/graphql/schema.schema.gql.dart'
    show
        GCreateUserInput,
        GEventCreateInput,
        GEventUpdateInput,
        GLoginInput,
        GReviewInput,
        GUpdateUserInput;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreateUserInput,
  GEventCreateInput,
  GEventUpdateInput,
  GLoginInput,
  GReviewInput,
  GUpdateUserInput,
  Gcreate_userData,
  Gcreate_userData_create_user,
  Gcreate_userReq,
  Gcreate_userVars
])
final Serializers serializers = _serializersBuilder.build();
