// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_email_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentEmailSendResponseImpl _$$StudentEmailSendResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentEmailSendResponseImpl(
      status: json['status'] as String,
      message: json['message'] as String?,
      errorType: json['errorType'] as String?,
    );

Map<String, dynamic> _$$StudentEmailSendResponseImplToJson(
        _$StudentEmailSendResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'errorType': instance.errorType,
    };

_$StudentCodeVerifyResponseImpl _$$StudentCodeVerifyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentCodeVerifyResponseImpl(
      status: json['status'] as String,
      message: json['message'] as String?,
      targetEmail: json['targetEmail'] as String?,
    );

Map<String, dynamic> _$$StudentCodeVerifyResponseImplToJson(
        _$StudentCodeVerifyResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'targetEmail': instance.targetEmail,
    };
