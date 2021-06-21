pragma solidity ^0.7.0;




/**
 * @title SimpleBEP20
 * @author ERC20 Generator (https://vittominacori.github.io/erc20-generator)
 * @dev Implementation of the SimpleBEP20
 */
contract SimpleBEP20 is ERC20, ServicePayer, GeneratorCopyright {

    constructor (
        string memory name,
        string memory symbol,
        uint256 initialBalance,
        address payable feeReceiver
    ) ERC20(name, symbol) ServicePayer(feeReceiver, "SimpleBEP20") payable {
        require(initialBalance > 0, "SimpleBEP20: supply cannot be zero");

        _mint(_msgSender(), initialBalance);
    }
}