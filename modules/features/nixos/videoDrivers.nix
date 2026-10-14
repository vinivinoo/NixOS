{ self, inputs, ... }: {
  flake.nixosModules.videoDrivers = {
    services.xserver.videoDrivers = [ "amdgpu" ];
  };
}
