# Rust Github Action with Musl

Latest Rust stable release with musl (armv7, aarch64 and x86_64)

# Usage

In a file inside `.github/workflows/quickstart.yml`

```yaml
name: Rust Example

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v1
      - uses: ismail/rust-action@main
        with: cargo build --target x86_64-unknown-linux-musl

