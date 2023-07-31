//:!:>moon
module aux::moon_coin {
    struct MoonCoin {}

    fun init_module(sender: &signer) {
        aptos_framework::managed_coin::initialize<MoonCoin>(
            sender,
            b"Moon Coin",
            b"MOON",
            0,
            false,
        );
    }

    public entry fun register(sender: &signer) {
        aptos_framework::managed_coin::register<aux::moon_coin::MoonCoin>(sender)
    }

    public entry fun mint(sender: &signer, dst_addr: address, amount: u64,) {
        aptos_framework::managed_coin::mint<aux::moon_coin::MoonCoin>(sender, dst_addr, amount);
    }
}
//<:!:moon
