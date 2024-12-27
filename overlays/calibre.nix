self: super: {
  calibre = super.calibre.overrideAttrs (oldAttrs: {
    # We want to have pycryptodome around in order to support DeDRM
    nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [ self.python312Packages.pycryptodome ];
  });
}
