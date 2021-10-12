# UNLOCK/ROOT für das Fire 7 HD (7th Gen)

Da mein Tablet sehr mit Werbung zugemüllt war und mit der Zeit immer langsamer wurde, habe ich mich dazu entschlossen ein Custom ROM (in meinem Fall LineageOS) aufzuspielen.

Um das ganze auch unter NixOS flashen zu können, musste ich die Bash-Scripte ein wenig anpassen und ein paar Module zusätzlich installieren.

# Original-Dateien

https://forum.xda-developers.com/t/unlock-root-twrp-unbrick-downgrade-fire-7-ford-and-austin.3899860/

# ROM

https://lineageos.org/

# Configuration.nix

Die Module für die Configuration sind wie folgt:

```nix
programs.adb.enable = true;
```

Den User zu der Gruppe adbusers und sudo hinzufügen:

```nix
  users.users.USER = {
     isNormalUser = true;
     home = "/home/USER";
     extraGroups = [ "wheel" "adbusers" ]; # Enable ‘sudo’ and 'adb'  for the user.
  };
```

Folgende Module installieren:

```nix
 environment.systemPackages = with pkgs; [
    ..
    python39
    unzip
    usbutils
    ..
  ];
```

Danach eine nix-shell erzeugen (nix-shell file ist im Repo):

```nix
nix-shell
```
und die Anleitung aus dem XDADev-Forum befolgen.
