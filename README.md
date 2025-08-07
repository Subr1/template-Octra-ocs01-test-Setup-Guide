mkdir -p EI

cat <<EOF > README.md
# Octra ocs01-test Setup Guide

This guide will walk you through the process of installing, configuring, and running the [ocs01-test](https://github.com/octra-labs/ocs01-test.git) project on your system.

---

✅ Step 1: Clone the Repository

\`\`\`bash
git clone https://github.com/octra-labs/ocs01-test.git
cd ocs01-test
\`\`\`

✅ Step 2: Install Rust

\`\`\`bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source \$HOME/.cargo/env
\`\`\`

✅ Step 3: Build the Binary

\`\`\`bash
cargo build --release
./target/release/ocs01-test
\`\`\`

✅ Step 4: Setup Configuration File

\`\`\`bash
cp EI/exec_interface.json .
\`\`\`

✅ Step 5: Create Your Wallet File or Import

\`\`\`bash
nano wallet.json
\`\`\`

Isi wallet.json:

\`\`\`json
{
  "priv": "YOUR_OCTRA_WALLET_PRIVATE_KEY",
  "addr": "YOUR_OCTRA_WALLET_ADDRESS",
  "rpc": "https://octra.network"
}
\`\`\`

Press Ctrl + O then Enter to save  
Press Ctrl + X to exit

✅ Step 6: Run the Program

\`\`\`bash
./target/release/ocs01-test
\`\`\`
EOF

cat <<EOF > setup.sh
#!/bin/bash

echo "🚀 Starting Octra ocs01-test Node Setup"

echo "[1/6] Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source \$HOME/.cargo/env

echo "[2/6] Cloning ocs01-test..."
git clone https://github.com/octra-labs/ocs01-test.git
cd ocs01-test

echo "[3/6] Building binary..."
cargo build --release
cd ..

echo "[4/6] Copying exec_interface.json..."
cp EI/exec_interface.json ./ocs01-test/

echo "[5/6] Creating wallet.json.example..."
cat <<EOL > wallet.json.example
{
  "priv": "YOUR_OCTRA_WALLET_PRIVATE_KEY",
  "addr": "YOUR_OCTRA_WALLET_ADDRESS",
  "rpc": "https://octra.network"
}
EOL
cp wallet.json.example wallet.json

echo "[6/6] Setup Complete! Edit wallet.json before running the node."
echo "Run node with:"
echo "cd ocs01-test && ../run.sh"
EOF

cat <<EOF > run.sh
#!/bin/bash
./target/release/ocs01-test
EOF

cat <<EOF > wallet.json.example
{
  "priv": "YOUR_OCTRA_WALLET_PRIVATE_KEY",
  "addr": "YOUR_OCTRA_WALLET_ADDRESS",
  "rpc": "https://octra.network"
}
EOF

cat <<EOF > EI/exec_interface.json
{
  "info": "Replace with the actual exec_interface.json content"
}
EOF

chmod +x setup.sh run.sh
# Octra ocs01-test Setup Guide

This guide will walk you through the process of installing, configuring, and running the [ocs01-test](https://github.com/octra-labs/ocs01-test.git) project on your system.

---
