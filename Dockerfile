FROM rust:1.60.0

LABEL "com.github.actions.name"="Rust Action"
LABEL "com.github.actions.description"="Latest Rust stable with musl (armv7, aarch64 and x86_64)"
LABEL "com.github.actions.icon"="play-circle"
LABEL "com.github.actions.color"="gray-dark"

RUN rustup target add aarch64-unknown-linux-musl
RUN rustup target add armv7-unknown-linux-musleabihf
RUN rustup target add x86_64-unknown-linux-musl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
