#!/usr/bin/env bash
set -euo pipefail

repo_root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
base_url="https://raw.githubusercontent.com/tw93/Kaku/main/assets/shell-integration/yazi-flavors"

for flavor in kaku-dark kaku-light; do
  destination="$repo_root/$flavor.yazi/flavor.toml"
  temporary_file=$(mktemp)
  trap 'rm -f "$temporary_file"' EXIT

  curl --fail --silent --show-error --location \
    "$base_url/$flavor.yazi/flavor.toml" \
    --output "$temporary_file"

  test -s "$temporary_file"
  install -m 0644 "$temporary_file" "$destination"
  rm -f "$temporary_file"
  trap - EXIT
  echo "updated $flavor.yazi/flavor.toml"
done
