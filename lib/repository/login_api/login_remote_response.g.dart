// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      status: json['status'] as String,
      accessToken: json['accessToken'] as String?,
      targetEmail: json['targetEmail'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'accessToken': instance.accessToken,
      'targetEmail': instance.targetEmail,
      'message': instance.message,
    };

_$UserProfileResponseImpl _$$UserProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileResponseImpl(
      userEmail: json['userEmail'] as String,
      image: json['image'] as String?,
      school: json['school'] as bool,
      basketCount: (json['basketCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserProfileResponseImplToJson(
        _$UserProfileResponseImpl instance) =>
    <String, dynamic>{
      'userEmail': instance.userEmail,
      'image': instance.image,
      'school': instance.school,
      'basketCount': instance.basketCount,
    };

_$EmailVerificationResponseImpl _$$EmailVerificationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EmailVerificationResponseImpl(
      status: json['status'] as String,
      targetEmail: json['targetEmail'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$EmailVerificationResponseImplToJson(
        _$EmailVerificationResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'targetEmail': instance.targetEmail,
      'message': instance.message,
    };
