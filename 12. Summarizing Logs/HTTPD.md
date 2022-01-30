|       Field      |                                                                                Purpose                                                                                  |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|        `1`       | Client IP address.                                                                                                                                                      |
|        `2`       | Client identity as defined by RFC 1413 and the `identd` client. This is not read unless `IdentityCheck` is enabled. If it is not read, the value will be with a hyphen. |
|        `3`       | The user ID of the user authentication if enabled. If authentication is not enabled, the value will be a hyphen.                                                        |
|        `4`       | The date and time of the request in the format `day/month/year:hour:minute:second offset`.                                                                              |
|        `5`       | The actual request and method.                                                                                                                                          |
|        `6`       | The return status code, such as `200` or `404`.                                                                                                                         |
|        `7`       | File size in bytes.                                                                                                                                                     |
