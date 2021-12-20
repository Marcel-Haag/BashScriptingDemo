|                              Line                             |                                            Meaning                                                 |
| ------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
|                       `WEBDIR=/www/docs/`                     | We initialize the `WEBDIR` variable that we store in the path to the directory that will hold the different websites. |
|                   `CONFDIR=/etc/httpd/conf.d`                 | We initialize the `CONFDIR` variable that we will use to store the newly created virtual host configuration file. |
|                `TEMPLATE=$HOME/httpdConfTemp.txt`             | We initialize the variable that we will use for the template. This should point to the path of our template. |
|             `[ -d $CONFDIR ]` or `mkdir -p "$CONFDIR"`          | On a working `EL6` host, this directory will exist and is included in the main configuration. If we are running this as a pure test, then we can create a directory to prove that we can create the correct configuration within the target directory. |
| `sed s/dummy-host.example.com/$1/$TEMPLATE >$CONFDIR/$1.conf` | The `sed` command works as an engine in the script, running the search and replace operations. Using the substitute command in `sed`, we search for the dummy text and replace it with the argument passed to the script. |
|                      `mkdir -p $WEBDIR/$1`                    | Here, we create the correct subdirectory to house the websites for the new virtual host. |
|       `echo "New site for $1" > $WEBDIR/$1/index.html`        | In this final step, we create a basic holding page for the website. |
