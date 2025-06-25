// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_remote_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SNSLoginRequestImpl _$$SNSLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SNSLoginRequestImpl(
      type: json['type'] as String,
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$$SNSLoginRequestImplToJson(
        _$SNSLoginRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'accessToken': instance.accessToken,
    };

_$ChangeSNSLoginRequestImpl _$$ChangeSNSLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeSNSLoginRequestImpl(
      targetEmail: json['targetEmail'] as String,
    );

Map<String, dynamic> _$$ChangeSNSLoginRequestImplToJson(
        _$ChangeSNSLoginRequestImpl instance) =>
    <String, dynamic>{
      'targetEmail': instance.targetEmail,
    };

_$StudentEmailRequestImpl _$$StudentEmailRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentEmailRequestImpl(
      schoolEmail: json['schoolEmail'] as String,
    );

Map<String, dynamic> _$$StudentEmailRequestImplToJson(
        _$StudentEmailRequestImpl instance) =>
    <String, dynamic>{
      'schoolEmail': instance.schoolEmail,
    };

_$EmailVerificationRequestImpl _$$EmailVerificationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EmailVerificationRequestImpl(
      email: json['email'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$EmailVerificationRequestImplToJson(
        _$EmailVerificationRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
    };
