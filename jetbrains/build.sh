#!/usr/bin/env bash
# Packages the Lagoon JetBrains theme plugin into dist/lagoon-theme-<version>.jar.
# Theme-only plugins contain no code, so the JDK's `jar` tool is all that is needed.
set -euo pipefail

cd "$(dirname "$0")"

version=$(sed -n 's:.*<version>\(.*\)</version>.*:\1:p' resources/META-INF/plugin.xml)
out="dist/lagoon-theme-${version}.jar"

jar_tool=$(command -v jar || true)
if [ -z "$jar_tool" ] && [ -n "${JAVA_HOME:-}" ]; then
  # Tolerate JAVA_HOME pointing at either the JDK root or its bin directory.
  for candidate in "$JAVA_HOME/bin/jar" "$JAVA_HOME/jar" "$JAVA_HOME/bin/jar.exe" "$JAVA_HOME/jar.exe"; do
    if [ -x "$candidate" ]; then jar_tool=$candidate; break; fi
  done
fi
if [ -z "$jar_tool" ]; then
  echo "error: JDK 'jar' tool not found; add it to PATH or set JAVA_HOME" >&2
  exit 1
fi

mkdir -p dist
rm -f "$out"
"$jar_tool" --create --file "$out" -C resources .

echo "Built $out"
