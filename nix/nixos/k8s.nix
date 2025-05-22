{users, pkgs, ...}:

let gtk = pkgs.google-cloud-sdk.withExtraComponents( with pkgs.google-cloud-sdk.components; [
    gke-gcloud-auth-plugin
  ]);

in
{
  environment.systemPackages = with pkgs; [
    gtk
    gnumake

    postgresql

    kubectl
    kubernetes-helm
    telepresence2
    k9s

    redis
  ];

}
