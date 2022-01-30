{ if ( $9 == "404" ) 
    records[$9, $7]++ }
END {
for (r in record)
    print r, " has occured ", record[r], " times." 
}
