#![no_std]

use multiversx_sc::{derive_imports::*, imports::*};
// use multiversx_sc_modules::pause::PauseModule;

#[multiversx_sc::contract]
pub trait Template: multiversx_sc_modules::pause::PauseModule {
    #[init]
    fn init(&self) {}

    #[upgrade]
    fn upgrade(&self) {}

    #[endpoint(pauseS)]
    fn pause_sc(&self) {
        // self.pause_;
    }
}
