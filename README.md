# My Terraform for GCP-Cloud-SQL

I needed a GCP SQL database using postgres so I created this quick Terraform config to do that.


## Database Creation

There is a variable named `gcp_db_name` that you need to provide a name for. This will be used for the GCP DB name.

The database instance name however will be computed by Terraform and provided as an output. IPv4 is enabled and deletion protection is set to false so that Terraform can destroy the resources when necessary.