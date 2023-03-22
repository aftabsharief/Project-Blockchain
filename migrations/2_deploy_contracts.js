const bank = artifacts.require("bank");
const lottery = artifacts.require("lottery");
const Ownable = artifacts.require("Ownable");
const Test = artifacts.require("Test");


module.exports = function(deployer) {
  deployer.deploy(bank);
//  deployer.link(Test, Ownable);
  deployer.deploy(lottery);
  deployer.deploy(Ownable);
  deployer.deploy(Test);

};
