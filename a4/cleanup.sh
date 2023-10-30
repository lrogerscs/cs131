#!/bin/bash

# Remove VOTES, RunTime, Gross.
# Add DIRECTOR column.
# Move STARS column to the beginning.
# Save result with altered first line to new cleaned up file.
sed '1s/.*/STARS,MOVIES,YEAR,GENRE,RATING,ONE-LINE,DIRECTOR/' movies.csv > movies-cleanup.csv

# Remove hanging "– " (em dashes) from cleaned file.
sed -i 's/– //g' movies-cleanup.csv
