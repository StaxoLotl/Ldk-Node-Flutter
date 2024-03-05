// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.25.

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
        dynamic hint}) =>
    LdkCore.instance.api.finalizeBuilder(
        config: config,
        chainDataSourceConfig: chainDataSourceConfig,
        entropySourceConfig: entropySourceConfig,
        gossipSourceConfig: gossipSourceConfig,
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

  /// Close a previously opened channel.
  Future<void> closeChannel(
          {required ChannelId channelId,
          required PublicKey counterpartyNodeId,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseCloseChannel(
        that: this,
        channelId: channelId,
        counterpartyNodeId: counterpartyNodeId,
      );

  /// Connect to a node on the peer-to-peer network.
  ///
  /// If `permanently` is set to `true`, we'll remember the peer and reconnect to it on restart.
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

  /// Connect to a node and open a new channel. Disconnects and re-connects are handled automatically
  ///
  /// Disconnects and reconnects are handled automatically.
  ///
  /// If `pushToCounterpartyMsat` is set, the given value will be pushed (read: sent) to the
  /// channel counterparty on channel open. This can be useful to start out with the balance not
  /// entirely shifted to one side, therefore allowing to receive payments from the getgo.
  ///
  /// Returns a temporary channel id.
  Future<void> connectOpenChannel(
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

  /// Disconnects the peer with the given node id.
  ///
  /// Will also remove the peer from the peer store, i.e., after this has been called we won't
  /// try to reconnect on restart.
  Future<void> disconnect(
          {required PublicKey counterpartyNodeId, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseDisconnect(
        that: this,
        counterpartyNodeId: counterpartyNodeId,
      );

  /// Blocks until the next event is available.
  ///
  /// **Note:** this will always return the same event until handling is confirmed via `node.eventHandled()`.
  Future<void> eventHandled({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseEventHandled(
        that: this,
      );

  ///Retrieve a list of known channels.
  ///
  Future<List<ChannelDetails>> listChannels({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseListChannels(
        that: this,
      );

  /// Retrieves all payments.
  Future<List<PaymentDetails>> listPayments({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseListPayments(
        that: this,
      );

  /// Retrieves all payments that match the given predicate.
  ///
  Future<List<PaymentDetails>> listPaymentsWithFilter(
          {required PaymentDirection paymentDirection, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseListPaymentsWithFilter(
        that: this,
        paymentDirection: paymentDirection,
      );

  /// Retrieves a list of known peers.
  Future<List<PeerDetails>> listPeers({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseListPeers(
        that: this,
      );

  /// Returns our own listening address.
  Future<List<SocketAddress>?> listeningAddresses({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseListeningAddresses(
        that: this,
      );

  /// Retrieve a new on-chain/funding address.
  Future<Address> newOnchainAddress({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseNewOnchainAddress(
        that: this,
      );

  /// Confirm the last retrieved event handled.
  ///
  /// **Note:** This **MUST** be called after each event has been handled.
  Future<Event?> nextEvent({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseNextEvent(
        that: this,
      );

  /// Returns our own node id
  Future<PublicKey> nodeId({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseNodeId(
        that: this,
      );

  /// Retrieve the details of a specific payment with the given hash.
  ///
  /// Returns `PaymentDetails` if the payment was known and `null` otherwise.
  Future<PaymentDetails?> payment(
          {required PaymentHash paymentHash, dynamic hint}) =>
      LdkCore.instance.api.nodeBasePayment(
        that: this,
        paymentHash: paymentHash,
      );

  /// Returns a payable invoice that can be used to request and receive a payment of the amount
  /// given.
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

  /// Returns a payable invoice that can be used to request and receive a payment for which the
  /// amount is to be determined by the user, also known as a "zero-amount" invoice.
  Future<Bolt11Invoice> receiveVariableAmountPayment(
          {required String description,
          required int expirySecs,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseReceiveVariableAmountPayment(
        that: this,
        description: description,
        expirySecs: expirySecs,
      );

  /// Remove the payment with the given hash from the store.
  ///
  Future<void> removePayment(
          {required PaymentHash paymentHash, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseRemovePayment(
        that: this,
        paymentHash: paymentHash,
      );

  /// Send an on-chain payment to the given address, draining all the available funds.
  Future<Txid> sendAllToOnchainAddress(
          {required Address address, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendAllToOnchainAddress(
        that: this,
        address: address,
      );

  /// Send a payment given an invoice.
  Future<PaymentHash> sendPayment(
          {required Bolt11Invoice invoice, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendPayment(
        that: this,
        invoice: invoice,
      );

  ///Sends payment probes over all paths of a route that would be used to pay the given invoice.
  /// This may be used to send "pre-flight" probes, i.e., to train our scorer before conducting the actual payment.
  /// Note this is only useful if there likely is sufficient time for the probe to settle before sending out the actual payment,
  /// e.g., when waiting for user confirmation in a wallet UI.
  /// Otherwise, there is a chance the probe could take up some liquidity needed to complete the actual payment.
  /// Users should therefore be cautious and might avoid sending probes if liquidity is scarce and/or they don't expect the probe to return before they send the payment.
  /// To mitigate this issue, channels with available liquidity less than the required amount times Config::probing_liquidity_limit_multiplier won't be used to send pre-flight probes.
  Future<void> sendPaymentProbes(
          {required Bolt11Invoice invoice, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendPaymentProbes(
        that: this,
        invoice: invoice,
      );

  /// Sends payment probes over all paths of a route that would be used to pay the given
  /// zero-value invoice using the given amount.
  ///
  /// This can be used to send pre-flight probes for a so-called "zero-amount" invoice, i.e., an
  /// invoice that leaves the amount paid to be determined by the user.
  ///
  Future<void> sendPaymentProbesUsingAmount(
          {required Bolt11Invoice invoice,
          required int amountMsat,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendPaymentProbesUsingAmount(
        that: this,
        invoice: invoice,
        amountMsat: amountMsat,
      );

  /// Send a payment given an invoice and an amount in millisatoshi.
  ///
  /// This will fail if the amount given is less than the value required by the given invoice.
  ///
  /// This can be used to pay a so-called "zero-amount" invoice, i.e., an invoice that leaves the
  /// amount paid to be determined by the user.
  Future<PaymentHash> sendPaymentUsingAmount(
          {required Bolt11Invoice invoice,
          required int amountMsat,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendPaymentUsingAmount(
        that: this,
        invoice: invoice,
        amountMsat: amountMsat,
      );

  /// Send a spontaneous, aka. "keysend", payment
  Future<PaymentHash> sendSpontaneousPayment(
          {required int amountMsat, required PublicKey nodeId, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendSpontaneousPayment(
        that: this,
        amountMsat: amountMsat,
        nodeId: nodeId,
      );

  ///Sends payment probes over all paths of a route that would be used to pay the given amount to the given node_id.
  Future<void> sendSpontaneousPaymentProbes(
          {required int amountMsat, required PublicKey nodeId, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendSpontaneousPaymentProbes(
        that: this,
        amountMsat: amountMsat,
        nodeId: nodeId,
      );

  /// Send an on-chain payment to the given address.
  Future<Txid> sendToOnchainAddress(
          {required Address address, required int amountSats, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSendToOnchainAddress(
        that: this,
        address: address,
        amountSats: amountSats,
      );

  /// Creates a digital ECDSA signature of a message with the node's secret key.
  ///
  /// A receiver knowing the corresponding `PublicKey` (e.g. the node’s id) and the message
  /// can be sure that the signature was generated by the caller.
  /// Signatures are EC recoverable, meaning that given the message and the
  /// signature the PublicKey of the signer can be extracted.
  Future<String> signMessage({required List<int> msg, dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSignMessage(
        that: this,
        msg: msg,
      );

  /// Retrieve the currently spendable on-chain balance in satoshis.
  Future<int> spendableOnchainBalanceSats({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSpendableOnchainBalanceSats(
        that: this,
      );

  /// Starts the necessary background tasks, such as handling events coming from user input,
  /// LDK/BDK, and the peer-to-peer network.
  ///
  /// After this returns, the [Node] instance can be controlled via the provided API methods in
  /// a thread-safe manner.
  Future<void> start({dynamic hint}) => LdkCore.instance.api.nodeBaseStart(
        that: this,
      );

  /// Disconnects all peers, stops all running background tasks, and shuts down [Node].
  ///
  /// After this returns most API methods will throw NotRunning Exception.
  Future<void> stop({dynamic hint}) => LdkCore.instance.api.nodeBaseStop(
        that: this,
      );

  ///Sync the LDK and BDK wallets with the current chain state.
  Future<void> syncWallets({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseSyncWallets(
        that: this,
      );

  /// Retrieve the current total on-chain balance in satoshis.
  Future<int> totalOnchainBalanceSats({dynamic hint}) =>
      LdkCore.instance.api.nodeBaseTotalOnchainBalanceSats(
        that: this,
      );

  ///Update the config for a previously opened channel.
  ///
  Future<void> updateChannelConfig(
          {required ChannelId channelId,
          required PublicKey counterpartyNodeId,
          required ChannelConfig channelConfig,
          dynamic hint}) =>
      LdkCore.instance.api.nodeBaseUpdateChannelConfig(
        that: this,
        channelId: channelId,
        counterpartyNodeId: counterpartyNodeId,
        channelConfig: channelConfig,
      );

  /// Verifies that the given ECDSA signature was created for the given message with the
  /// secret key corresponding to the given public key.
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

  /// Returns the next event in the event queue.
  ///
  /// Will block the current thread until the next event is available.
  ///
  /// **Note:** this will always return the same event until handling is confirmed via `node.eventHandled()`.
  ///
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
