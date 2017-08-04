# Ubuntu 16.04 install script
Automates the installation of some tools, applications and platforms in Ubuntu 16.04.

## Usage
Run the `run-all.sh` script as superuser.

```
sudo run-all.sh
```

This will run all of the scripts in the `install` directory, in sequence. To skip any one of these scripts, rename it so that the file extension is something other than `.sh`. E.g.

```
mv install/00n-script-i-dont-want-to-run.sh install/00n-script-i-dont-want-to-run.sh.skip
```

## Issues
When run multiple times, duplicate entries will be written to the `.list` files in `/etc/apt/sources.list.d`. This is harmless, but will produce warnings when updating the APT database.

In order to make each script self-contained, `apt-get update` is run multiple times, slowing things down a little.
