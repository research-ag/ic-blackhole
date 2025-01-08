# Reproducible build of ninegua/ic-blackhole

This repository is to reproduce the build of canister e3mmv-5qaaa-aaaah-aadma-cai with module hash `210cf941e5ca77daac314a91517483ac171264527e3d0d713b92bb95239d7de0`.
The canister is known as the "ic-blackhole".
It's original repository is https://github.com/ninegua/ic-blackhole.

The commands to reproduce the build are:

```bash
git clone git@github.com:research-ag/ic-blackhole.git
cd ic-blackhole
docker-compose build base
docker-compose run --rm  wasm
```

The output should be

```
210cf941e5ca77daac314a91517483ac171264527e3d0d713b92bb95239d7de0  out/out_Linux_x86_64-opt.wasm
```

## Prerequisites

We need docker installed.

On Mac, it is recommended to install `colima` from https://github.com/abiosoft/colima.
When using `colima` it is ok to use value `host` in the `--arch`.
This is also the default so the `--arch` option can be omitted.
