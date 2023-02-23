# data-diff-demo
Demo of data-diff with a dbt project using dbt-duckdb

## Prerequisites

Verify that both `python3` and `git` are installed and available:
```shell
python3 --version
git --version
```

## Clone

Clone this repo using HTTPS (or [your method of choice](docs/clone.md)):

```shell
git clone https://github.com/dbeatty10/data-diff-demo.git
cd data-diff-demo
```

</details>

## Install
Create a virtual environment and install dependencies using `bash`/`zsh` (or [your OS shell of choice](docs/virtual-environment.md)):

```shell
python3 -m venv env
source env/bin/activate
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
source env/bin/activate
```

## Setup

Establish the baseline production table:
```shell
dbt run -s simple_model --target prod
```

Simulate a change to the table during development:
```
dbt run -s simple_model
```

## Usage

```shell
data-diff --dbt --dbt-profiles-dir .
```

Example output:
```
Found 1 successful model runs from the last dbt command.
main.dev.simple_model <> main.prod.simple_model 

| Rows Added    | Rows Removed
------------------------------------------------------------
| 0             | 0
------------------------------------------------------------

Updated Rows: 1
Unchanged Rows: 1

Values Updated:
color: 1

Diffs Complete!
```

To run without using the `--dbt` flag above, you can compare the same two models with the following command:

```shell
data-diff 'duckdb://main@./diffle_shop.duckdb' prod.simple_model dev.simple_model -k id -c color
```

Here, we first specify the database connection string, then each table name. We use flags to specify how data-diff should compare these tables:

- `-k` : sets the key column used to compare the tables
- `-c` : an additional, non-key column to diff 

Example output:

```diff
- 1, orange
+ 1, black
```

## Check exit code

I'd expect the following to be something other than `0` when a difference is found (i.e. a non-zero exit code):
```shell
echo $?
```

## Debug mode

The following will show a full stack trace in the case of exceptions:
```shell
data-diff --dbt --dbt-profiles-dir . --debug
```

## Wrap up
Deactivate the virtual environment when finished:

```shell
deactivate
```
