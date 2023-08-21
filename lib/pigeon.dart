// Autogenerated from Pigeon (v10.1.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

class PersonInfo {
  PersonInfo({
    required this.id,
    required this.displayName,
  });

  String id;

  String displayName;

  Object encode() {
    return <Object?>[
      id,
      displayName,
    ];
  }

  static PersonInfo decode(Object result) {
    result as List<Object?>;
    return PersonInfo(
      id: result[0]! as String,
      displayName: result[1]! as String,
    );
  }
}

class _UnbluFlutterToVisitorHostApiCodec extends StandardMessageCodec {
  const _UnbluFlutterToVisitorHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PersonInfo) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return PersonInfo.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class UnbluFlutterToVisitorHostApi {
  /// Constructor for [UnbluFlutterToVisitorHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  UnbluFlutterToVisitorHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _UnbluFlutterToVisitorHostApiCodec();

  Future<bool> createVisitor() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.UnbluFlutterToVisitorHostApi.createVisitor', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }

  Future<void> deinitializeVisitor() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.UnbluFlutterToVisitorHostApi.deinitializeVisitor', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<bool> isInitialized() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.UnbluFlutterToVisitorHostApi.isInitialized', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }

  Future<PersonInfo?> getPersonInfo() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.UnbluFlutterToVisitorHostApi.getPersonInfo', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return (replyList[0] as PersonInfo?);
    }
  }

  Future<int> getUnreadMessagesCount() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.UnbluFlutterToVisitorHostApi.getUnreadMessagesCount', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as int?)!;
    }
  }

  Future<bool> isDeInitialized() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.UnbluFlutterToVisitorHostApi.isDeInitialized', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }

  Future<bool> openConversation(String arg_conversationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.UnbluFlutterToVisitorHostApi.openConversation', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_conversationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }

  Future<bool> openConversationOverview() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.UnbluFlutterToVisitorHostApi.openConversationOverview', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }

  Future<void> setAccessToken(String arg_token) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.UnbluFlutterToVisitorHostApi.setAccessToken', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_token]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setCustomCookies(Map<String?, String?> arg_customCookies) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.UnbluFlutterToVisitorHostApi.setCustomCookies', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_customCookies]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }
}

abstract class UnbluVisitorHostToFlutterApi {
  static const MessageCodec<Object?> codec = StandardMessageCodec();

  void showUnblu();

  void hideUnblu();

  bool handleBackButton(bool hasBackStack);

  void displayMessage(String message);

  void updateUnreadMessage(int updateUnreadMessages);

  void onAgentAvailable(bool isAvailable);

  void onUnbluError(String errorType, String message);

  void onVisitorInitChanged(bool initState);

  static void setup(UnbluVisitorHostToFlutterApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.showUnblu', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          // ignore message
          api.showUnblu();
          return;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.hideUnblu', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          // ignore message
          api.hideUnblu();
          return;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.handleBackButton', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.handleBackButton was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final bool? arg_hasBackStack = (args[0] as bool?);
          assert(arg_hasBackStack != null,
              'Argument for dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.handleBackButton was null, expected non-null bool.');
          final bool output = api.handleBackButton(arg_hasBackStack!);
          return output;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.displayMessage', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.displayMessage was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_message = (args[0] as String?);
          assert(arg_message != null,
              'Argument for dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.displayMessage was null, expected non-null String.');
          api.displayMessage(arg_message!);
          return;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.updateUnreadMessage', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.updateUnreadMessage was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_updateUnreadMessages = (args[0] as int?);
          assert(arg_updateUnreadMessages != null,
              'Argument for dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.updateUnreadMessage was null, expected non-null int.');
          api.updateUnreadMessage(arg_updateUnreadMessages!);
          return;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.onAgentAvailable', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.onAgentAvailable was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final bool? arg_isAvailable = (args[0] as bool?);
          assert(arg_isAvailable != null,
              'Argument for dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.onAgentAvailable was null, expected non-null bool.');
          api.onAgentAvailable(arg_isAvailable!);
          return;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.onUnbluError', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.onUnbluError was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_errorType = (args[0] as String?);
          assert(arg_errorType != null,
              'Argument for dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.onUnbluError was null, expected non-null String.');
          final String? arg_message = (args[1] as String?);
          assert(arg_message != null,
              'Argument for dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.onUnbluError was null, expected non-null String.');
          api.onUnbluError(arg_errorType!, arg_message!);
          return;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.onVisitorInitChanged', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.onVisitorInitChanged was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final bool? arg_initState = (args[0] as bool?);
          assert(arg_initState != null,
              'Argument for dev.flutter.pigeon.UnbluVisitorHostToFlutterApi.onVisitorInitChanged was null, expected non-null bool.');
          api.onVisitorInitChanged(arg_initState!);
          return;
        });
      }
    }
  }
}