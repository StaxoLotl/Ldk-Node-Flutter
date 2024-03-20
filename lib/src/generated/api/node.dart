// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.28.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'error.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'types.dart';

Future<NodeBase> finalizeBuilder(
        {required Config config,
        ChainDataSourceConfig? chainDataSourceConfig,
        EntropySourceConfig? entropySourceConfig,
        GossipSourceConfig? gossipSourceConfig,
        LiquiditySourceConfig? liquiditySourceConfig,
        dynamic hint}) =>
    LdkCore.instance.api.finalizeBuilder(
        config: config,
        chainDataSourceConfig: chainDataSourceConfig,
        entropySourceConfig: entropySourceConfig,
        gossipSourceConfig: gossipSourceConfig,
        liquiditySourceConfig: liquiditySourceConfig,
        hint: hint);

// Rust type: RustOpaqueNom<Node < SqliteStore >>
@sealed
class NodeSqliteStore extends RustOpaque {
  NodeSqliteStore.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  NodeSqliteStore.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        LdkCore.instance.api.rust_arc_increment_strong_count_NodeSqliteStore,
    rustArcDecrementStrongCount:
        LdkCore.instance.api.rust_arc_decrement_strong_count_NodeSqliteStore,
    rustArcDecrementStrongCountPtr:
        LdkCore.instance.api.rust_arc_decrement_strong_count_NodeSqliteStorePtr,
  );
}

class MnemonicBase {
  final String seedPhrase;

  const MnemonicBase({
    required this.seedPhrase,
  });

  static Future<MnemonicBase> generate({dynamic hint}) =>
      LdkCore.instance.api.mnemonicBaseGenerate(hint: hint);

  @override
  int get hashCode => seedPhrase.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MnemonicBase &&
          runtimeType == other.runtimeType &&
          seedPhrase == other.seedPhrase;
}

class NodeBase {
  final NodeSqliteStore ptr;

  const NodeBase({
    required this.ptr,
  });

  Future<void> closeChannel(
          {required UserChannelId userChannelId,
          required PublicKey counterpartyNodeId,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseCloseChannel(
        that: this,
        userChannelId: userChannelId,
        counterpartyNodeId: counterpartyNodeId,
      );

  Future<Config> config({dynamic hint}) => LdkCore.instance.api.nodeBaseConfig(
        that: this,
      );

  Future<void> connect(
          {required PublicKey nodeId,
          required SocketAddress address,
          required bool persist,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseConnect(
        that: this,
        nodeId: nodeId,
        address: address,
        persist: persist,
      );

  Future<UserChannelId> connectOpenChannel(
          {required SocketAddress address,
          required PublicKey nodeId,
          required int channelAmountSats,
          int? pushToCounterpartyMsat,
          required bool announceChannel,
          ChannelConfig? channelConfig,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseConnectOpenChannel(
        that: this,
        address: address,
        nodeId: nodeId,
        channelAmountSats: channelAmountSats,
        pushToCounterpartyMsat: pushToCounterpartyMsat,
        announceChannel: announceChannel,
        channelConfig: channelConfig,
      );

  Future<void> disconnect(
          {required PublicKey counterpartyNodeId, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseDisconnect(
        that: this,
        counterpartyNodeId: counterpartyNodeId,
      );

  Future<void> eventHandled({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseEventHandled(
        that: this,
      );

  Future<BalanceDetails> listBalances({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseListBalances(
        that: this,
      );

  Future<List<ChannelDetails>> listChannels({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseListChannels(
        that: this,
      );

  Future<List<PaymentDetails>> listPayments({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseListPayments(
        that: this,
      );

  Future<List<PaymentDetails>> listPaymentsWithFilter(
          {required PaymentDirection paymentDirection, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseListPaymentsWithFilter(
        that: this,
        paymentDirection: paymentDirection,
      );

  Future<List<PeerDetails>> listPeers({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseListPeers(
        that: this,
      );

  Future<List<SocketAddress>?> listeningAddresses({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseListeningAddresses(
        that: this,
      );

  Future<Address> newOnchainAddress({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseNewOnchainAddress(
        that: this,
      );

  Future<Event?> nextEvent({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseNextEvent(
        that: this,
      );

  Future<Event> nextEventAsync({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseNextEventAsync(
        that: this,
      );

  Future<PublicKey> nodeId({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseNodeId(
        that: this,
      );

  Future<PaymentDetails?> payment(
          {required PaymentHash paymentHash, dynamic hint}) =>
      LdkCore.instance.api.nodeBasePayment(
        that: this,
        paymentHash: paymentHash,
      );

  Future<Bolt11Invoice> receivePayment(
          {required int amountMsat,
          required String description,
          required int expirySecs,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseReceivePayment(
        that: this,
        amountMsat: amountMsat,
        description: description,
        expirySecs: expirySecs,
      );

  Future<Bolt11Invoice> receivePaymentViaJitChannel(
          {required int amountMsat,
          required String description,
          required int expirySecs,
          int? maxTotalLspFeeLimitMsat,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseReceivePaymentViaJitChannel(
        that: this,
        amountMsat: amountMsat,
        description: description,
        expirySecs: expirySecs,
        maxTotalLspFeeLimitMsat: maxTotalLspFeeLimitMsat,
      );

  Future<Bolt11Invoice> receiveVariableAmountPayment(
          {required String description,
          required int expirySecs,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseReceiveVariableAmountPayment(
        that: this,
        description: description,
        expirySecs: expirySecs,
      );

  Future<Bolt11Invoice> receiveVariableAmountPaymentViaJitChannel(
          {required String description,
          required int expirySecs,
          int? maxProportionalLspFeeLimitPpmMsat,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseReceiveVariableAmountPaymentViaJitChannel(
        that: this,
        description: description,
        expirySecs: expirySecs,
        maxProportionalLspFeeLimitPpmMsat: maxProportionalLspFeeLimitPpmMsat,
      );

  Future<void> removePayment(
          {required PaymentHash paymentHash, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseRemovePayment(
        that: this,
        paymentHash: paymentHash,
      );

  Future<Txid> sendAllToOnchainAddress(
          {required Address address, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendAllToOnchainAddress(
        that: this,
        address: address,
      );

  Future<PaymentHash> sendPayment(
          {required Bolt11Invoice invoice, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendPayment(
        that: this,
        invoice: invoice,
      );

  Future<void> sendPaymentProbes(
          {required Bolt11Invoice invoice, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendPaymentProbes(
        that: this,
        invoice: invoice,
      );

  Future<void> sendPaymentProbesUsingAmount(
          {required Bolt11Invoice invoice,
          required int amountMsat,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendPaymentProbesUsingAmount(
        that: this,
        invoice: invoice,
        amountMsat: amountMsat,
      );

  Future<PaymentHash> sendPaymentUsingAmount(
          {required Bolt11Invoice invoice,
          required int amountMsat,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendPaymentUsingAmount(
        that: this,
        invoice: invoice,
        amountMsat: amountMsat,
      );

  Future<PaymentHash> sendSpontaneousPayment(
          {required int amountMsat, required PublicKey nodeId, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendSpontaneousPayment(
        that: this,
        amountMsat: amountMsat,
        nodeId: nodeId,
      );

  Future<void> sendSpontaneousPaymentProbes(
          {required int amountMsat, required PublicKey nodeId, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendSpontaneousPaymentProbes(
        that: this,
        amountMsat: amountMsat,
        nodeId: nodeId,
      );

  Future<Txid> sendToOnchainAddress(
          {required Address address, required int amountSats, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendToOnchainAddress(
        that: this,
        address: address,
        amountSats: amountSats,
      );

  Future<String> signMessage({required List<int> msg, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSignMessage(
        that: this,
        msg: msg,
      );

  Future<void> start({dynamic hint}) => LdkCore.instance.api.nodeBaseStart(
        that: this,
      );

  Future<NodeStatus> status({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseStatus(
        that: this,
      );

  Future<void> stop({dynamic hint}) => LdkCore.instance.api.nodeBaseStop(
        that: this,
      );

  Future<void> syncWallets({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSyncWallets(
        that: this,
      );

  Future<void> updateChannelConfig(
          {required UserChannelId userChannelId,
          required PublicKey counterpartyNodeId,
          required ChannelConfig channelConfig,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseUpdateChannelConfig(
        that: this,
        userChannelId: userChannelId,
        counterpartyNodeId: counterpartyNodeId,
        channelConfig: channelConfig,
      );

  Future<bool> verifySignature(
          {required List<int> msg,
          required String sig,
          required PublicKey pkey,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseVerifySignature(
        that: this,
        msg: msg,
        sig: sig,
        pkey: pkey,
      );

  Future<Event> waitNextEvent({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseWaitNextEvent(
        that: this,
      );

  @override
  int get hashCode => ptr.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NodeBase && runtimeType == other.runtimeType && ptr == other.ptr;
}

class U8Array12 extends NonGrowableListView<int> {
  static const arraySize = 12;

  @internal
  Uint8List get inner => _inner;
  final Uint8List _inner;

  U8Array12(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  U8Array12.init() : this(Uint8List(arraySize));
}

class U8Array16 extends NonGrowableListView<int> {
  static const arraySize = 16;

  @internal
  Uint8List get inner => _inner;
  final Uint8List _inner;

  U8Array16(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  U8Array16.init() : this(Uint8List(arraySize));
}

class U8Array32 extends NonGrowableListView<int> {
  static const arraySize = 32;

  @internal
  Uint8List get inner => _inner;
  final Uint8List _inner;

  U8Array32(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  U8Array32.init() : this(Uint8List(arraySize));
}

class U8Array4 extends NonGrowableListView<int> {
  static const arraySize = 4;

  @internal
  Uint8List get inner => _inner;
  final Uint8List _inner;

  U8Array4(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  U8Array4.init() : this(Uint8List(arraySize));
}

class U8Array64 extends NonGrowableListView<int> {
  static const arraySize = 64;

  @internal
  Uint8List get inner => _inner;
  final Uint8List _inner;

  U8Array64(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  U8Array64.init() : this(Uint8List(arraySize));
}
