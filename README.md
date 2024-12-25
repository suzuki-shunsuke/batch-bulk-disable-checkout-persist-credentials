# batch-bulk-disable-checkout-persist-credentials

Requirements

- [disable-checkout-persist-credentials](https://github.com/suzuki-shunsuke/disable-checkout-persist-credentials)
- [multi-guitter](https://github.com/lindell/multi-gitter)

You can install them by [aqua](https://aquaproj.github.io/)

```sh
aqua i -l -a
```

## Create pull requests

```sh
bash run.sh <org or user name>
```

e.g.

```sh
bash run.sh aquaproj
```

## Merge pull requests

```sh
bash merge.sh <org or user name>
```

e.g.

```sh
bash merge.sh aquaproj
```

## Update prs created by Renovate

```sh
bash update-ghalint.sh <org or user name>
```

e.g.

```sh
bash update-ghalint.sh aquaproj
```

## LICENSE

[MIT](LICENSE)
