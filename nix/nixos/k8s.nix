{users, pkgs, ...}:

let gtk = pkgs.google-cloud-sdk.withExtraComponents( with pkgs.google-cloud-sdk.components; [
    gke-gcloud-auth-plugin
  ]);

in 
{
  users.users.nixosdevbox = {
    # packages = with pkgs; [    ];
  };

  environment.systemPackages = with pkgs; [
    gtk
    gnumake

    postgresql
    libpq
    
    kubectl
    kubernetes-helm
    telepresence2
  ];

}
