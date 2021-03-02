// Copyright © 2020 Stormbird PTE. LTD.

import Foundation

protocol AnalyticsNavigation {
    var rawValue: String { get }
}

protocol AnalyticsAction {
    var rawValue: String { get }
}

protocol AnalyticsUserProperty {
    var rawValue: String { get }
}

enum Analytics {
    enum Navigation: String, AnalyticsNavigation {
        case actionSheetForTransactionConfirmation = "Screen: Txn Confirmation"
        case actionSheetForTransactionConfirmationSuccessful = "Screen: Txn Confirmation Successful"
        case actionSheetForTransactionConfirmationFailed = "Screen: Txn Confirmation Failed"
        case scanQrCode = "Screen: QR Code Scanner"
        case onRamp = "Screen: Fiat On-Ramp"
        case tokenSwap = "Screen: Token Swap"
    }

    enum Action: String, AnalyticsAction {
        case cancelsTransactionInActionSheet = "Txn Confirmation Cancelled"
        case cancelScanQrCode = "Scan QR Code Cancelled"
        case completeScanQrCode = "Scan QR Code Completed"
    }

    enum Properties: String {
        case address
        case from
        case to
        case amount
        case source
        case resultType
        case speedType
        case chain
        case transactionType
        case name
    }

    enum UserProperties: String, AnalyticsUserProperty {
        case transactionCount
        case testnetTransactionCount
        case enabledChains
        case walletsCount
        case hdWalletsCount
        case keystoreWalletsCount
        case watchedWalletsCount
    }

    enum ScanQRCodeSource: String {
        case sendFungibleScreen
        case addressTextField
        case browserScreen
        case importWalletScreen
        case addCustomTokenScreen
        case walletScreen
        case quickAction
    }

    enum ScanQRCodeResultType: String {
        case value
        case walletConnect
        case other
        case url
        case privateKey
        case seedPhase
        case json
        case address
    }

    enum TransactionConfirmationSource: String {
        case walletConnect
        case sendFungible
        case tokenScript
        case sendNft
        case browser
        case claimPaidMagicLink
    }

    enum TransactionConfirmationSpeedType: String {
        case slow
        case standard
        case fast
        case rapid
        case custom
    }

    enum TransactionType: String {
        case erc20Transfer
        case nativeCryptoTransfer
        case unknown
    }
}