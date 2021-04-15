pragma ton-solidity ^0.39.0;
import '../../interfaces/swapPair/ISwapPairInformation.sol';

library SwapPairConstants {
    // Balance management and cost information
    uint128 constant tip3SendDeployGrams = 0.5 ton;
    uint128 constant tip3DeployGrams = 0.2 ton;

    // We don't want to risk, this is one-time procedure
    // Extra wallet's tons will be transferred with first token transfer operation
    // Yep, there are transfer losses, but they are pretty small
    uint128 constant walletInitialBalanceAmount = 1000 milli;
    uint128 constant walletDeployMessageValue   = 1500 milli;

    // TIP-3 root contract parameters
    uint8 constant tip3LpDecimals = 0;
    uint8 constant contractFullyInitialized = 4;

    // Information about required payload size
    uint16 constant payloadWithdrawBits = 16;
    uint8  constant payloadWithdrawRefs = 0;

    // Minimal required K to start swap pair operation
    uint256 constant kMin = 0;

    // Id of operations
    uint8 constant SwapPairOperation = 0;
    uint8 constant ProvideLiquidity  = 1;
    uint8 constant ProvideLiquidityOneToken = 2;
    uint8 constant WithdrawLiquidity = 3;
    uint8 constant WithdrawLiquidityOneToken = 4;

    // Operation TvmCell size
    OperationSizeRequirements constant SwapOperationSize = OperationSizeRequirements(0, 0);
    OperationSizeRequirements constant WithdrawOperationSize = OperationSizeRequirements(0, 0);
    OperationSizeRequirements constant WithdrawOperationSizeOneToken = OperationSizeRequirements(0, 0);
    OperationSizeRequirements constant ProvideLiquidityOperationSize = OperationSizeRequirements(0, 0);
    OperationSizeRequirements constant ProvideLiquidityOperationSizeOneToken = OperationSizeRequirements(0, 0);
}