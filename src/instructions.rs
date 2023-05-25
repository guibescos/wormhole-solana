//! Functions for creating instructions for CPI calls.

use borsh::{
    BorshDeserialize,
    BorshSerialize,
};

/// A Copy of the `Instruction` enum from the Solitaire Solana program.
#[repr(u8)]
#[derive(BorshSerialize, BorshDeserialize)]
pub enum Instruction {
    Initialize,
    PostMessage,
    PostVAA,
    SetFees,
    TransferFees,
    UpgradeContract,
    UpgradeGuardianSet,
    VerifySignatures,
    PostMessageUnreliable,
}

mod initialize;
mod post_message;
mod post_vaa;
mod set_fees;
mod verify_signatures;

pub use {
    initialize::initialize,
    post_message::{
        post_message,
        post_message_unreliable,
    },
    post_vaa::{
        post_vaa,
        PostVAAData,
    },
    set_fees::set_fees,
    verify_signatures::{
        verify_signatures,
        verify_signatures_txs,
    },
};
