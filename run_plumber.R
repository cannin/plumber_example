library(plumber)
library(magrittr)

# From: https://www.rplumber.io/articles/quickstart.html
# Load the API functions
root <- pr("plumber_api_functions.R")

# See endpoints
root

# Start the server
root %>% pr_run()
