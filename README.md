This is my repo for managing my container toolboxes for usage via Distrobox

Originally forked from [boxkit](https://github.com/ublue-os/boxkit)

Originally my `cli` image was built from `bluefin-cli` from [uBlue's Toolboxes](https://github.com/ublue-os/toolboxes), however that container seems to no longer be built, at least since 2024.

`bluefin-cli` was in turn based on `wolfi-toolbox` from the same repo, which is also no longer built.

So, I've rebuilt my `cli` toolbox to be based on my own local copy of `wolfi-toolbox` that's kept pinned to the latest Wolfi container version, then some of the `bluefin-cli` niceties are manually ported over to my `cli` configuration.
