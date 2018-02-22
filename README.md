# eslint-airbnb

A Docker container that runs ESLint style checks on your JavaScript.

## How to use

1. Mount your source code directory inside the container at `/code`.
2. Specify the `ESLINT_PATH` environment variable to check only a specific path inside your source code. *(optional)*
3. Add any additional parameters to pass to ESLint after your `run` command, or as `command` if you are using this with docker-compose.

## Example

```bash
sudo docker run savoirfairelinux/eslint-airbnb:latest \
  --rm -it -v "/path/to/my/project:/code:ro" \
  -e "ESLINT_PATH=demo/static/js/**/*"
```
