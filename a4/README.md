The issues that I chose to fix were the inconsistent formatting of years and the incorrect 
naming/placement/existence of columns in the first line of the file.

To fix the columns, I used one command:
sed '1s/.*/STARS,MOVIES,YEAR,GENRE,RATING,ONE-LINE,DIRECTOR/' movies.csv > movies-cleanup.csv
This command alters the first line and saves the resulting movie data to a new file.

To fix the inconsistent formatting of years, I used one other command:
sed -i 's/– //g' movies-cleanup.csv
This removes hanging em dashes that were present in the years in the new file.
