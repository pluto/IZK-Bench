pragma circom 2.1.0;

include "../circuits/chacha20/authentication.circom";

component main { public [step_in] } = PlaintextAuthentication(512);