#!/bin/bash

echo "🚀 Memulai Setup Node Octra ocs01-test"

echo "[1/6] Install Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

echo "[2/6] Clone repo ocs01-test..."
git clone https://github.com/octra-labs/ocs01-test.git
cd ocs01-test

echo "[3/6] Build binary..."
cargo build --release
cd ..

echo "[4/6] Copy file exec_interface.json..."
cp EI/exec_interface.json ./ocs01-test/

echo "[5/6] Buat wallet.json.example dan wallet.json..."
cat <<EOL > wallet.json.example
{
  "priv": "YOUR_OCTRA_WALLET_PRIVATE_KEY",
  "addr": "YOUR_OCTRA_WALLET_ADDRESS",
  "rpc": "https://octra.network"
}
EOL
cp wallet.json.example wallet.json

echo "[6/6] Setup selesai ✅"
echo "Edit file wallet.json sebelum menjalankan node"
echo "Run node dengan: cd ocs01-test && ../run.sh"
