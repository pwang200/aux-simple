module aux::xrp_coin {
    struct XRPCoin {}

    fun init_module(sender: &signer) {
        aptos_framework::managed_coin::initialize<XRPCoin>(
            sender,
            b"XRP Coin",
            b"XRP",
            0,
            false,
        );
    }

    public entry fun register(sender: &signer) {
        aptos_framework::managed_coin::register<aux::xrp_coin::XRPCoin>(sender)
    }

    public entry fun mint(sender: &signer, dst_addr: address, amount: u64,) {
        aptos_framework::managed_coin::mint<aux::xrp_coin::XRPCoin>(sender, dst_addr, amount);
    }

}
