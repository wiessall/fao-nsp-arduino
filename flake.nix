{
  description = "Carpentries workbench env";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    sandpaper = { url = "github:carpentries/sandpaper"; flake = false; };
    pegboard = { url = "github:carpentries/pegboard"; flake = false; };
    varnish = { url = "github:carpentries/varnish"; flake = false; };
  };

  outputs = { self, nixpkgs, sandpaper, pegboard, varnish }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      build = pname: src: deps: pkgs.rPackages.buildRPackage {
        inherit pname src;
        version = "dev";
        propagatedBuildInputs = deps;
      };
      varnishPkg = build "varnish" varnish [ ];
      pegboardPkg = build "pegboard" pegboard (with pkgs.rPackages; [
        commonmark fs glue purrr R6 tinkr xml2 xslt yaml
      ]);
      sandpaperPkg = build "sandpaper" sandpaper (with pkgs.rPackages; [
        pegboardPkg pkgdown cli commonmark fs gh gert rstudioapi rlang glue
        assertthat yaml desc knitr markdown rmarkdown renv rprojroot usethis
        withr whisker callr cffr servr stringr httr R_utils xfun nanonext
      ]);
    in {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          (rWrapper.override { packages = [ sandpaperPkg varnishPkg ]; })
          pandoc
          git
        ];
      };
    };
}
