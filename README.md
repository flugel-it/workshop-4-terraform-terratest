# AWS S3 bucket module

## Description
This module provides a S3 bucket instance resource. Amazon S3 is cloud object storage with industry-leading scalability, data availability, security, and performance.

## Requirements
These are the requirements for this module.

|    | Terraform |
|:--:|-----------|
| >= |   1.0.11  |

|    |    AWS    |
|:--:|-----------|
| >= |  4.15.1   |

## Usage


```hcl
module "s3-bucket" {
  source  = "github.com/flugel-it/workshop-4-terraform-terratest"

  bucket                 = "flugel-workshop-bucket"
  tags = {
   Name = "HelloWorld"
  }

  acl                    = "private"

}
```

## Parameters or Configuration

In the `variables.tf` file we can declare:

|               | Default Value |     Type    |                    Description                    |
|:-------------:|:-------------:|:-----------:|:-------------------------------------------------:|
|     **region**    |       us-east-1      |    string   |  AWS region.  |
|     **bucket_name**    |       ""      |    string   |  The name of the bucket.  |
|     **acl**    |       private      |    string   |  The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write  |
|     **tags**    |       ""      |    map   |  A map of tags to assign to the resource.  |

## Outputs
|     Name          |      Description    |
|:-------------:|:-------------:|
|     **bucket_tag**    | Value of the s3 bucket tags. |
|     **s3_arn**    | The Amazon Resource Name (ARN) of the s3 bucket. |

## Testing

In order to test this repository you must first install all dependencies:

``` 
cd test
go get -v -d -t ./... 
```

Then, you can execute the tests, from inside the `test` folder:

```
go test -v -timeout 10m
```
