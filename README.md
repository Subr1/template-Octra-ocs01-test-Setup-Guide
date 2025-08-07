# Octra ocs01-test Setup Guide

This repository provides a complete setup guide and necessary scripts for installing, configuring, and running the `ocs01-test` node.

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

Open and edit wallet.json:

```bash
nano wallet.json
```

Then paste this JSON content:

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

---

**Note:**  
This repository template and setup scripts were generated with the assistance of **ChatGPT** by OpenAI.
