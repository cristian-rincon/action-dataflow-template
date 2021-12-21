# Github action | create Dataflow flex template | Python

This action builds [Dataflow flex templates](https://github.com/GoogleCloudPlatform/python-docs-samples/blob/main/dataflow/flex-templates/streaming_beam/README.md). The action expect `GOOGLE_APPLICATION_CREDENTIALS` encoded as base64.

You can encode file: `base64 my_key.json`

## Github actions steps

### Set credentials

Enable `GOOGLE_APPLICATION_CREDENTIALS` in the context.

### Creating a Flex template

To run a template, you need to create a template spec file containing all the necessary information to run the job, such as the SDK information and metadata.

The `metadata.json` file contains additional information for the template such as the "name", "description" and input "parameters" fields.

The template file must be created in a Cloud Storage location, and is used to run a new Dataflow job.


