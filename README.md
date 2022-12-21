# My Terraform for creating a Postgres instance on Google Cloud SQL

I needed a GCP SQL database using postgres so I created this quick Terraform config to do that.


## Database Creation

Here are the variables that need to be filled at runtime:

* `gcp_project`
    * The name of the GCP project
* `gcp_region`
    * The name of the GCP region
* `gcp_zone`
    * The name of the GCP zone
* `gcp_creds`
    * The creds you need to access the GCP project
* `gcp_db_name`
    * The name of the database


The database instance name however will be computed by Terraform and provided as an output. IPv4 is enabled and deletion protection is set to false so that Terraform can destroy the resources when necessary.

This was an attempt that did not include the module. The idea will be to end up using the module for this to clean up the code.