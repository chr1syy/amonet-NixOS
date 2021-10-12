with import <nixpkgs> {};
(python39.withPackages (ps: [ps.pyserial])).env
