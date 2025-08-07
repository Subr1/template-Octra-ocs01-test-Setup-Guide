#!/bin/bash
echo "🧪 Running basic test..."
if [ -f ocs01-test/target/release/ocs01-test ]; then
  echo "✅ Binary found. Test passed."
else
  echo "❌ Binary missing. Test failed."
  exit 1
fi
