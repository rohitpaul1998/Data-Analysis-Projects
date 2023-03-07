#code to be written to cleanse data scraped from twitter
import numpy as np
from Scraper_Bot import df
import json

# replacing empty strings with NaN
df1 = df.copy()
df1 = df.fillna(value=np.nan)
df2 = df1.copy()

# Converting the dataframe to JSON
json_data = df2.to_json(orient='records')
print(json_data)