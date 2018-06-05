module.exports = {
    networks: {
        development: {
            host: '127.0.0.1', // your host
            port: 1337,
            network_id: '*',
        },
    },
    contractInfo: {
        chainId: 1,
        privkey: '0x4c5fbb31c3db0a33ef311ccf6b985e42b83ab1153ea85e983a97b44e158ac555', // your private key
        quota: 100000000
    },
}
