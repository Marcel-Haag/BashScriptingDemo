## Command
|      Argument      |                                                     Command                                                     |                Description                 |
| ------------------ | --------------------------------------------------------------------------------------------------------------- | ------------------------------------------ |
|         `i`        | `sed '2i\inserted text' myfile`  | Inserts the specified text before the specified line or pattern. |
|         `a`        | `sed '2a\inserted text' myfile`  | Appends the specified text after the specified line or pattern. |
|         `c`        | `sed '2i\modifie text' myfile` | Changes the entire line. |
|         `d`        | `sed '4,$d' myfile` | Deletes the fourth line to the end of the file. |
|     `y/abc/ABC`    | `sed 'y/abc/ABC' myfile`  | Transform command that is used to replace any letter or number with another. |
|         `-e`       | `sed -e 's/First/XFirst/; s/Second/XSecond' myfile` | Used to separating the commands with a semicolon.  |
|         `-i`       | `sed -i ' /^user s@bin/bash@/bin/sh/ ' $HOME/passwd` or `sed -i.bak ' /^user s@bin/bash@/bin/sh/ ' $HOME/passwd` | Used to run in-place update. |


## Further reading
* www.gnu.org/software/sed/manual/sed.html
* https://linux.die.net/man/1/sed