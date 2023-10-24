#bin/bash
if [ -d .git/hooks ]; then
  echo "Installing Git hooks..."
  cp -rf .github/hooks/* .git/hooks
else
  echo "Cannot install Git hooks, init repository first"
fi
