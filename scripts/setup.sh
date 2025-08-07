#!/bin/bash

echo "�� Starting Octra ocs01-test setup..."

echo "[1/6] Installing Rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

echo "[2/6] Cloning ocs01-test repository"
git clone https://github.com/octra-labs/ocs01-test.git

echo "[3/6] Building the binary"
cd ocs01-test
cargo build --release
cd ..

echo "[4/6] Copying exec_interface.json config"
cp EI/exec_interface.json ./ocs01-test/

echo "[5/6] Creating example wallet.json"
cat <<EOL > wallet.json.example
{
  "priv": "YOUR_OCTRA_WALLET_PRIVATE_KEY",
  "addr": "YOUR_OCTRA_WALLET_ADDRESS",
  "rpc": "https://octra.network"
}
EOL
cp wallet.json.example wallet.json

echo "[6/6] Setup complete! Please edit wallet.json before running the node."
echo "Run the node with:"
echo "cd ocs01-test && ../scripts/run.sh"
