// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_email_remote_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentEmailSendRequestImpl _$$StudentEmailSendRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentEmailSendRequestImpl(
      schoolEmail: json['schoolEmail'] as String,
    );

Map<String, dynamic> _$$StudentEmailSendRequestImplToJson(
        _$StudentEmailSendRequestImpl instance) =>
    <String, dynamic>{
      'schoolEmail': instance.schoolEmail,
    };

_$StudentCodeVerifyRequestImpl _$$StudentCodeVerifyRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentCodeVerifyRequestImpl(
      email: json['email'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$StudentCodeVerifyRequestImplToJson(
        _$StudentCodeVerifyRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
    };

_$StudentAccountTransferRequestImpl
    _$$StudentAccountTransferRequestImplFromJson(Map<String, dynamic> json) =>
        _$StudentAccountTransferRequestImpl(
          targetEmail: json['targetEmail'] as String,
        );

Map<String, dynamic> _$$StudentAccountTransferRequestImplToJson(
        _$StudentAccountTransferRequestImpl instance) =>
    <String, dynamic>{
      'targetEmail': instance.targetEmail,
    };
