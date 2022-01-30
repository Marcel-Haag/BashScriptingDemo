{ records[$9]++ }
END {
for (r in record)
    print r, " has occured ", record[r], " times." 
}
