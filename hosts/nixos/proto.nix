{ suites, ... }:

{
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  virtualisation.hypervGuest.enable = false;

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/vda";
  boot.initrd.availableKernelModules = [ "ahci" "xhci_pci" "virtio_pci" "sr_mod" "virtio_blk" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ ];
  boot.extraModulePackages = [ ];

  fileSystems."/".device = "/dev/disk/by-label/slash";
  swapDevices = [{ device = "/dev/disk/by-label/swap"; }];

  networking.useDHCP = true;

  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";
}
