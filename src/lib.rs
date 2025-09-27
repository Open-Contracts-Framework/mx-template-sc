#![no_std]

use multiversx_sc::imports::*;

mod admin;
mod pause;

#[multiversx_sc::contract]
pub trait Template: admin::AdminModule {
    #[init]
    fn init(&self) {}

    #[upgrade]
    fn upgrade(&self) {}
}
