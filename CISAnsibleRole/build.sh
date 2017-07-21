#!/usr/bin/env bash

mkdir -p build/{root,test}
touch build/test/nop # workaround for test-free packages for now

pkg() {
    mkdir -p "build/root/ansible/roles/cis-amazon-linux"
    for D in defaults files handlers meta tasks vars; do
        cp -R "../$D" ./build/root/ansible/roles/cis-amazon-linux/
    done
}


pkg
