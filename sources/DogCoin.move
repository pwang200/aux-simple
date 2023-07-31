module aux::dog_coin {
    struct DogCoin {}

    fun init_module(sender: &signer) {
        aptos_framework::managed_coin::initialize<DogCoin>(
            sender,
            b"Dog Coin",
            b"DOG",
            0,
            false,
        );
    }

    public entry fun register(sender: &signer) {
        aptos_framework::managed_coin::register<aux::dog_coin::DogCoin>(sender)
    }

    public entry fun mint(sender: &signer, dst_addr: address, amount: u64,) {
        aptos_framework::managed_coin::mint<aux::dog_coin::DogCoin>(sender, dst_addr, amount);
    }
}
