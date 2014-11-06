# Module Skeleton

Share common files between different puppet modules.

There are multiple ways to achive this ([modulesync](https://github.com/puppetlabs/modulesync), [puppet-module-skeleton](https://github.com/garethr/puppet-module-skeleton)) but the way I wanted to go is the pure git way.

So over here (more specifically at the [skeleton](https://github.com/eirc/puppet-module_skeleton/tree/skeleton) branch) the module skeleton is kept. To use it in a module your add this repo as a remote and only reference the skeleton branch. The second part is only optional so you don't actually track the master branch which keeps this documentation and is totally useless in that respect.

```bash
git remote add -t skeleton skeleton git@github.com:eirc/puppet-module_skeleton.git
```

Then at any time fetch and merge will bring any new skeleton file updates to the current working branch.

```bash
git fetch skeleton
git merge skeleton/skeleton
```

Obviously any changes that conflict will produce a git conflict and that will just have to be resolved as any other git conflict.

The baseline of the skeleton is produced with `puppet module generate module_skeleton` so a search for `module_skeleton` will reveal places that definitly require manual intervention and the actual module name will have to replace it.
