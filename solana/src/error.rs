use {
    nom::error::ErrorKind,
    thiserror::Error,
};

/// Error macro to streamline error throwing.
#[macro_export]
macro_rules! require {
    ($expr:expr, $name:ident) => {
        if !$expr {
            return Err($name.into());
        }
    };
}

#[derive(Error, Debug, PartialEq, Eq)]
pub enum WormholeError {
    // Governance Errors
    #[error("Unknown Governance Chain.")]
    UnknownGovernanceAction,
    #[error("Invalid Governance Action.")]
    InvalidGovernanceChain,
    #[error("Invalid Governance Module.")]
    InvalidGovernanceModule,

    // VAA Errors
    #[error("Guardian Set has Expired.")]
    GuardianSetExpired,
    #[error("Invalid Expiration Time.")]
    InvalidExpirationTime,
    #[error("Invalid Guardian Set.")]
    InvalidGuardianSet,
    #[error("Invalid Guardian Signature.")]
    InvalidSignature,
    #[error("Invalid Guardian Key.")]
    InvalidSignatureKey,
    #[error("Invalid Signature Position.")]
    InvalidSignaturePosition,
    #[error("Invalid VAA Version.")]
    InvalidVersion,
    #[error("Guardian Quorum not met.")]
    QuorumNotMet,
    #[error("Signatures not sorted.")]
    UnsortedSignatures,

    // Serialization Errors
    #[error("Not enough input data for deserialization.")]
    ParseError(ErrorKind),
    #[error("Too much input data for deserialization.")]
    ParseIncomplete,

    // SDK Errors.
    #[error("Chain ID does not match any known chain.")]
    UnknownChain,
    #[error("Deserialization Failed.")]
    DeserializeFailed,
    #[error("Serialization Failed.")]
    SerializeFailed,
}