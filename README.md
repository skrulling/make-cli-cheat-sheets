# Cheat-Sheets
Make quick cheat-sheets on the go from your shell.


## Usage


Append a command to a cheat-sheet. Will create a new sheet if it does not already exist.

```chc -a [name of sheet] 'command to be added'```

List all commands in a specific sheet

```chc -l [name of sheet]```

List all sheets

```chc -c```

Show help

```chc -h```

Open sheet in vim so you can edit/add commands easily
```
chc -e [file]
```

### Examples


Append a command to file sheet *vim*
```
chc -a vim 'u - undo last operation'
```


Display all commands in the sheet *vim*
```
chc -l vim
```


## Installation
For now, the script will use your *Documents* folder to store the sheets.
All sheets will be stored in *Documents/chc_sheets/*
