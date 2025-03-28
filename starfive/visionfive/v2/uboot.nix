{ buildUBoot
, opensbi
}:

buildUBoot {
  extraMakeFlags = [
    "OPENSBI=${opensbi}/share/opensbi/lp64/generic/firmware/fw_dynamic.bin"
  ];

  defconfig = "starfive_visionfive2_defconfig";

  extraConfig = ''
    CONFIG_DEFAULT_FDT_FILE=starfive/jh7110-starfive-visionfive-2-v1.3b.dtb
  '';

  filesToInstall = [
    "spl/u-boot-spl.bin.normal.out"
    "u-boot.itb"
  ];
}
