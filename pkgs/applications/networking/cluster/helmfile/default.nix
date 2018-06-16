{ lib, buildGoPackage, fetchFromGitHub, ... }:

let version = "0.19.0"; in

buildGoPackage {
  name = "helmfile-${version}";

  src = fetchFromGitHub {
    owner = "roboll";
    repo = "helmfile";
    rev = "v${version}";
    sha256 = "0wjzzaygdnnvyi5a78bhmz2sxc4gykdl00h78dkgvj7aaw05s9yd";
  };

  goPackagePath = "github.com/roboll/helmfile";

  meta = {
    description = "Deploy Kubernetes Helm charts";
    homepage = https://github.com/roboll/helmfile;
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ pneumaticat ];
    platforms = lib.platforms.unix;
  };
}
