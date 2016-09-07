# asp_core Cookbook
[![Build status](https://ci.appveyor.com/api/projects/status/3ms55pmyw5l1k49b/branch/master?svg=true)](https://ci.appveyor.com/project/damacus/asp-core/branch/master)

This cookbook
- Installs the [.Net Core ](https://www.appveyor.com/docs/deployment/agent#installing-appveyor-deployment-agent)
- [Triggers a deployment](https://www.appveyor.com/docs/api/environments-deployments#start-deployment) from the Appveyor API

It does not install IIS or any other related services.

## Requirements
### Chef
- Chef 12.5+

## Platform
- Windows

## Recipes
### default  
Installs .NET Core Windows Server Hosting bundle.

As Core is currently in heavy development. If the version downloaded is out of date and the cookbook has not been updated please either:

1) Update the following attributes

Set the following attributes:
```
node['asp_net_core']['installer_url']
node['asp_net_core']['checksum']
```

2 ) Submit a PR to correct this for the latest stable version.
