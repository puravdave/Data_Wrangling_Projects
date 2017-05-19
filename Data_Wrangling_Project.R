# Load tidyverse

library(tidyverse)

# Load refine_original 

refine_df <- read_csv("refine_original.csv")

#1. clean up names - I don't know how to do that

#2. Separate product code and number

refine_df_2 <- refine_df %>% 
  separate(`Product code / number`, c("product_code", "product_number"), sep = "-")

#3. Add product categories

#4. Add full address for geocoding

refine_df_3 <- refine_df_2 %>% 
  mutate(full_address = unite(address, city, country, sep = ", "))

# trial for github workflow
