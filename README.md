# Kaku Yazi Flavors

Yazi flavors from [Kaku](https://github.com/tw93/Kaku), packaged for direct installation.

## Install

Install either flavor with Yazi's package manager:

```sh
ya pkg add frankittee/kaku-yazi-flavor:kaku-dark
# or
ya pkg add frankittee/kaku-yazi-flavor:kaku-light
```

Then select one in `~/.config/yazi/theme.toml`:

```toml
[flavor]
dark = "kaku-dark"
light = "kaku-light"
```

The package contains both `kaku-dark.yazi` and `kaku-light.yazi`.

## Upstream sync

The checked-in flavor files mirror these upstream paths:

- `assets/shell-integration/yazi-flavors/kaku-dark.yazi/flavor.toml`
- `assets/shell-integration/yazi-flavors/kaku-light.yazi/flavor.toml`

Run `./scripts/sync-upstream.sh` to refresh both files. A scheduled GitHub Actions workflow opens a pull request when upstream changes.

## License

The flavor definitions are derived from Kaku. See [Kaku's license](https://github.com/tw93/Kaku/blob/main/LICENSE) for the upstream license terms.
