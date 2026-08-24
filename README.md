# tfsprout-github-action

For [Terraform Provider](https://www.terraform.io/docs/providers/index.html) developers, add Terraform Provider code linting to your GitHub repository easily with this [GitHub Action](https://github.com/features/actions). Uses [tfsprout](https://github.com/jfrappier/tfsprout), a maintained fork of tfproviderlint.

## Usage

```yaml
on: [pull_request, push]

jobs:
  example:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v4
    - uses: jfrappier/tfsprout-github-action@main
      with:
        args: ./...
        # version: v0.2.0   # optional: pin/override instead of the default `latest` release
```

## Development and Testing

To locally test the Docker build:

```console
$ docker build -t tfsprout-github-action:latest .
```
