# Octra ocs01-test Setup Guide

This guide will walk you through the process of installing, configuring, and running the [ocs01-test](https://github.com/octra-labs/ocs01-test.git) project on your system.

---

✅ Step 1: Clone the Repository

```bash
git clone https://github.com/octra-labs/ocs01-test.git
cd ocs01-test
```

✅ Step 2: Install Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
```

✅ Step 3: Build the Binary

```bash
cargo build --release
./target/release/ocs01-test
```

✅ Step 4: Setup Configuration File

```bash
cp EI/exec_interface.json .
```

✅ Step 5: Create Your Wallet File or Import

```bash
nano wallet.json
```

Isi wallet.json:

```json
{
  "priv": "YOUR_OCTRA_WALLET_PRIVATE_KEY",
  "addr": "YOUR_OCTRA_WALLET_ADDRESS",
  "rpc": "https://octra.network"
}
```

✅ Step 6: Run the Program

```bash
./target/release/ocs01-test
```
