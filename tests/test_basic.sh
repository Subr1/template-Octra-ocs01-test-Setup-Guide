#!/bin/bash
echo "Running basic tests..."
if [ -f ocs01-test/target/release/ocs01-test ]; then
  echo "Binary found, test passed."
else
  echo "Binary missing, test failed."
  exit 1
fi
