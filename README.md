#ribs

`ribs` is a simple shell script to show lines with offset.

It is alike `head` command.

## How to use

### Syntax
`ribs [-o offset] [-n number_of_rows] file`

### Example

```
$ cat example.txt
1
2
3
4
5
6
7
8
9
10
$ ribs -o 4 -n 3 example.txt
4
5
6
```

## Options


| Option | Value |
| ----- | ----- |
| o | Offset. Output is biginning from this number. Default value is 1. |
| n | Number Number of lines. Output include this number of lines. Default value is 10. |
