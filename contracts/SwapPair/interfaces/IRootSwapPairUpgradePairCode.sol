pragma solidity >= 0.6.0;

pragma AbiHeader expire;
pragma AbiHeader time;
pragma AbiHeader pubkey;

interface IRootSwapPairUpgradePairCode {

    function setSwapPairCode(TvmCell code, uint32 codeVersion) external;

    function upgradeSwapPair(uint256 uniqueID) external;
}