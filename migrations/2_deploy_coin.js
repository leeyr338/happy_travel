var artifacts
if (artifacts) {
    var MetaCoin = artifacts.require('./travelCoin.sol')
} else {
    var tc = 'travelCoin'
}

module.exports = function(deployer) {
    deployer.deploy(tc)
}
