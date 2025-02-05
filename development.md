# Umbrel Application Development Notes

Developer notes for running an Umbrel test instance on NixOS. 

## Running a Test Instance

Clone the [Umbrel](https://github.com/getumbrel/umbrel) repository and add the shell.nix to the root directory.

```nix
{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [ nodejs ];
    shellHook =
      ''
        export UMBREL_DEV_OPTIONS="-p 2200:22 -p 8000:80 -p 9100:9100 -p 9332:9332 -p 9300:9300 -p 9310:9310 -p 9323:9323 -p 9324:9323 -p 9101:9101 -p 9102:9102 -p 9103:9103 -p 9104:9104 -p 9105:9105"
	    echo 'Done, run `npm run dev` to get started.'
      '';
}
```

This will set up Node.js and open several ports that may be used for plugins under development (additional ports can be 
added if required). Next, run the following command:

```shell
npm run dev
```

If successful then you may open the Umbrel web UI on `localhost:8000` (because port 80 was mapped to 8000 in 
the `shell.nix`).

## Installing an Application

Firstly, use rsync to copy the repository into the Umbrel app directory.

```
rsync -av -e 'ssh -p 2200' --exclude=".gitkeep" <<UMBREL STORE REPO>> umbrel@localhost:/home/umbrel/umbrel/app-stores/getumbrel-umbrel-apps-github-53f74447/
```

Applications in the store can then be installed through the UI or using the command below.

```
npm run dev client -- apps.uninstall.mutate --appId <<APP ID>>
```
