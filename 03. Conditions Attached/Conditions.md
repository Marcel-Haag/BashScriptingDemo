## Conditional statements
* `&&` AND
* `||` OR

## Testing file types
* `-h` This shows that the file has a link
* `-d` This shows it's a directory
* `-e` This shows that the file exists in any form
* `-x` This shows that the file is executable
* `-f` This shows that the file is a regular file
* `-r` This shows that the file is readable
* `-p` This shows that the file is a named pipe
* `-b` This shows that the file is a block device
* `file1 -nt file2` This checks if `file1` is newer than `file2`
* `file1 -ot file2` This checks if `file1` is older than `file2`
* `-O file` This checks if the logged-in user is the owner of the file
* `-c` This shows that the file is a character device

## Testing integers
* `number1 -eq number2` This checks if `number1` is equal to `number2`
* `number1 -ge number2` This checks if `number1` is greather than or equal to `number2`
* `number1 -gt number2` This checks if `number1` is greater than `number2`
* `number1 -le number2` This checks if `number1` is lower than or equal to `number2`
* `number1 -lt number2` This checks if `number1` is lower than `number2`
* `number1 -ne number2` This checks if `number1`is not euqal to `number2`

## Checking strings
* `string1 = string2` This checks if `string1` is identical to `string2`
* `string1 != string2` This checks if `string1` is not identical to `string2`
* `string1 \< string2` This checks if `string1` is lower than `string2`
* `string1 \> string2` This checks if `string1` is greater than `string2`
* `-n string` This checks if `string` is no longer than zero
* `-z string` This checks if string has zero length
