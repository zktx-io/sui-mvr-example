// Copyright (c) 2022, Sui Foundation
// SPDX-License-Identifier: Apache-2.0

/// A basic Hello World example for Sui Move, part of the Sui Move intro course:
/// https://github.com/sui-foundation/sui-move-intro-course
///
module hello_world::hello_world;

use std::string;

/// An object that contains an arbitrary string
public struct HelloWorldObject has key, store {
    id: UID,
    /// A string contained in the object
    text: string::String,
}

#[lint_allow(self_transfer)]
public fun mint(ctx: &mut TxContext) {
    let object = HelloWorldObject {
        id: object::new(ctx),
        text: string::utf8(b"Hello, World!!"),
    };
    transfer::public_transfer(object, tx_context::sender(ctx));
}

#[lint_allow(self_transfer)]
public fun mint2(ctx: &mut TxContext) {
    let object = HelloWorldObject {
        id: object::new(ctx),
        text: string::utf8(b"Hello, MVR!!"),
    };
    transfer::public_transfer(object, tx_context::sender(ctx));
}

#[lint_allow(self_transfer)]
public fun mint3(ctx: &mut TxContext) {
    let object = HelloWorldObject {
        id: object::new(ctx),
        text: string::utf8(b"Extracting Function arguments is super simple!!"),
    };
    transfer::public_transfer(object, tx_context::sender(ctx));
}

#[lint_allow(self_transfer)]
public fun mint4(_ctx: &mut TxContext, _message: string::String) {
    assert!(false, 0);
}

#[lint_allow(self_transfer)]
public fun mint5(message: string::String, ctx: &mut TxContext) {
    let object = HelloWorldObject {
        id: object::new(ctx),
        text: message,
    };
    transfer::public_transfer(object, tx_context::sender(ctx));
}
