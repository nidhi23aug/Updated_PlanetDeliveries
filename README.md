# README

This R script processes a local Planet deliveries CSV file by:
1. Keeping only two columns: `download_item_id` and `item_type`
2. Renaming `item_type` to `download_item_type`
3. Adding a fixed column `download_item_assets` with predefined asset types
4. Saving the updated file as a new CSV locally

# Usage:
 - Replace "your_input_file.csv" with the path to your original file.
 - The output will be saved as "updated_file.csv" in the same directory.

# Note:
Direct S3 access is skipped for simplicity since:
 - The number of files is small.
 - The source (UAH S3) and destination (MCP S3) buckets are different.
It's easier to download the file locally, process it, and re-upload manually.
