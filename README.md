`rw` - Heroku Review Apps CLI 
=============================

This script (`rw`) provides a simple interface to interact with Heroku Review Apps. It allows you to run commands on the review app associated with the current git branch, connect to the Rails console, and view logs.

Features
--------

- Automatically detects the Heroku review app for the current branch.
- Provides shortcuts for common operations like opening the Rails console and viewing logs.
- Supports running arbitrary commands on the review app.

Installation
------------

1. Ensure you have the necessary dependencies installed:

   - [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli)
   - [jq](https://stedolan.github.io/jq/)

2. If you have `make` installed, run the following:

   ```sh
   make install
   ```

3. If not, copy the executable to a directory in your `$PATH` (e.g., `/usr/local/bin/`):

   ```sh
   cp rw /usr/local/bin/
   chmod +x /usr/local/bin/rw
   ```

Usage
-----

```sh
rw <command> [args]
```

Commands
--------

| Command   | Alias | Description                                      |
|-----------|-------|--------------------------------------------------|
| `console` | `c`   | Connect to the Rails console                    |
| `logs`    | `l`   | Show application logs in real-time              |
| `run`     | `r`   | Run a custom command on the review app          |
| `help`    | `h`   | Show usage information                          |

Examples
--------

#### Open Rails Console

```sh
rw console
```

#### View Logs

```sh
rw logs
```

#### Run a Command

```sh
rw run rake db:migrate
```

Environment Variables
---------------------

- `HEROKU_REVIEW_APP_PREFIX` (default: `review`): Prefix for review apps. If none, leave it blank.

Troubleshooting
---------------

- If the script cannot find the review app, check that the naming convention matches your Heroku app setup.
- Ensure you are logged into the Heroku CLI (`heroku auth:whoami`).
- Verify that `jq` is installed and working properly.

