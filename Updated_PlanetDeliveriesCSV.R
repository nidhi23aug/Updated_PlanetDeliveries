# Load required package
library(dplyr)
library(readr)

#No need to connect directly to S3 because:
# 1) Only a few files need processing.
# 2) The source (UAH S3) and destination (MCP S3) are different,
#    so it's simpler to download locally, make edits, and re-upload.


# Path to your local CSV file for Planet Deliveries
input_file <- "Downloads/20250417-20250430 - Planet Delivery.csv"
output_file <- "Desktop/Updated_20250417-20250430 - Planet Delivery.csv"

# Define the new column value
download_item_assets <- "basic_analytic_4b;basic_analytic_4b_rpc;basic_analytic_4b_xml;basic_analytic_8b;basic_analytic_8b_xml;basic_udm2;ortho_analytic_4b;ortho_analytic_4b_sr;ortho_analytic_4b_xml;ortho_analytic_8b;ortho_analytic_8b_sr;ortho_analytic_8b_xml;ortho_udm2;ortho_visual"

# Read, transform, and write the CSV
read_csv(input_file) %>%
  select(download_item_id, item_type) %>%
  rename(download_item_type = item_type) %>%
  mutate(download_item_assets = download_item_assets) %>%
  write_csv(output_file)
