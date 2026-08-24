# tfsprout shells out to "go env"/"go list" at runtime (not just build time), so the
# image needs a full Go toolchain, not just the compiled binary. Track the same Go
# version tfsprout's own Dockerfile pins, since "go list" fails on a module whose go
# directive is newer than the toolchain.
FROM golang:1.27-bookworm

LABEL "com.github.actions.name"="tfsprout"
LABEL "com.github.actions.description"="Run tfsprout, a maintained fork of tfproviderlint"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/jfrappier/tfsprout-github-action"
LABEL "homepage"="https://github.com/jfrappier/tfsprout-github-action"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
