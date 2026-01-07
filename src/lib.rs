#![no_std]

use multiversx_sc::imports::*;

pub mod admins;
pub mod constants;
pub mod errors;
pub mod pause;
pub mod structs;

#[multiversx_sc::contract]
pub trait Template: admins::AdminsModule + pause::PauseModule {
    #[init]
    fn init(&self) {}

    #[upgrade]
    fn upgrade(&self) {}
}
