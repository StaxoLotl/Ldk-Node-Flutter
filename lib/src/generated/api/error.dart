// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.31.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

enum BuilderException {
  socketAddressParseError,

  /// The given seed bytes are invalid, e.g., have invalid length.
  invalidSeedBytes,

  /// The given seed file is invalid, e.g., has invalid length, or could not be read.
  invalidSeedFile,

  /// The current system time is invalid, clocks might have gone backwards.
  invalidSystemTime,

  /// The a read channel monitor is invalid.
  invalidChannelMonitor,

  /// The given listening addresses are invalid, e.g. too many were passed.
  invalidListeningAddress,

  /// We failed to read data from the [`KVStore`].
  readFailed,

  /// We failed to write data to the [`KVStore`].
  writeFailed,

  /// We failed to access the given `storage_dir_path`.
  storagePathAccessFailed,

  /// We failed to setup our [`KVStore`].
  kvStoreSetupFailed,

  /// We failed to setup the onchain wallet.
  walletSetupFailed,

  /// We failed to setup the logger.
  loggerSetupFailed,
  invalidTrustedPeer,
}

enum NodeException {
  invalidTxid,

  /// Returned when trying to start [Node] while it is already running.
  alreadyRunning,

  /// Returned when trying to stop [Node] while it is not running.
  notRunning,

  /// An on-chain transaction could not be created.
  onchainTxCreationFailed,

  /// A network connection has been closed.
  connectionFailed,

  /// Invoice creation failed.
  invoiceCreationFailed,

  /// Sending a payment has failed.
  paymentSendingFailed,

  /// Sending a payment probe has failed.
  probeSendingFailed,

  /// A channel could not be opened.
  channelCreationFailed,

  /// A channel could not be closed.
  channelClosingFailed,

  /// A channel config could not be updated.
  channelConfigUpdateFailed,

  /// Persistence failed.
  persistenceFailed,

  /// A wallet operation failed.
  walletOperationFailed,

  /// A signing operation for transaction failed.
  onchainTxSigningFailed,

  /// A signing operation for message failed.
  messageSigningFailed,

  /// A transaction sync operation failed.
  txSyncFailed,

  /// A gossip updating operation failed.
  gossipUpdateFailed,

  /// The given address is invalid.
  invalidAddress,

  /// The given network address is invalid.
  invalidSocketAddress,

  /// The given public key is invalid.
  invalidPublicKey,

  /// The given secret key is invalid.
  invalidSecretKey,

  /// The given payment hash is invalid.
  invalidPaymentHash,

  /// The given payment preimage is invalid.
  invalidPaymentPreimage,

  /// The given payment secret is invalid.
  invalidPaymentSecret,

  /// The given amount is invalid.
  invalidAmount,

  /// The given invoice is invalid.
  invalidInvoice,

  /// The given channel ID is invalid.
  invalidChannelId,

  /// The given network is invalid.
  invalidNetwork,

  /// A payment with the given hash has already been initiated.
  duplicatePayment,

  /// There are insufficient funds to complete the given operation.
  insufficientFunds,
  feerateEstimationUpdateFailed,
}
