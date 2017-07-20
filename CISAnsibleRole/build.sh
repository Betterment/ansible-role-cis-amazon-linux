#!/usr/bin/env bash

mkdir -p build/{root,test}

pkg() {
    mkdir -p "build/root/ansible/roles/cis-amazon-linux"
    cp -R ../{defaults,files,handlers,meta,tasks,vars} ./build/root/ansible/roles/cis-amazon-linux/
}


pkg