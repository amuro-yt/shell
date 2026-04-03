# !/bin/bash

result=$(composer config repositories | grep -o '{"name":"local"[^}]*}')

if [ -n "$result" ]; then
  echo "❌ local repository が設定されています:"
  echo "$result"
  echo "コミットを中止しました。"
  exit 1
fi

exit 0


