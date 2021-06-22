# Create Spawn Data Image Action

This action is part of a suite of Github Actions for [Spawn](https://spawn.cc), a service for provisioning cloud hosted, ephemeral databases for development and CI.

See the [Spawn docs](https://docs.spawn.cc/cicd/github-actions) for an example workflow that uses this action.

## Inputs

| Name            | Description                                                                                                                                        | Default | Required |
| --------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | ------- | -------- |
| dataImageYaml   | The data image YAML file to use to create a data-image from                                                                                        | N/A     | Yes      |
| lifetime        | The lifetime of the data image before it is automatically deleted.                                                                                 | 73h     | No       |
| tags            | The tags to apply to the image (will override those in the YAML, and should be passed as multiple `--tag=<your_tag>` space-separated strings       | ''      | No       |
| teams           | The teams to apply to the image (will override those in the YAML, and should be passed as multiple `--team=<your_team>` space-separated strings    | ''      | No       |

## Outputs

| Name              | Description                                                                           |
| ---------------   | ------------------------------------------------------------------------------------- |
| dataImageName     | The new data images name                                                                |

## Authentication

This action requires the use of a [Spawn access token](https://spawn.cc/docs/spawnctl-accesstoken-create).

This is expected to be provided to all actions through a `SPAWNCTL_ACCESS_TOKEN` environment variable. **This should be provided via a [GitHub Secret](https://docs.github.com/en/actions/reference/encrypted-secrets)**.
