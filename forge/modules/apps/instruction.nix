{
  lib,
  ...
}:
{
  options = {
    description = lib.mkOption {
      type = lib.types.str;
    };

    command = lib.mkOption {
      type = lib.types.str;
    };

    mockCommand = lib.mkOption {
      type = lib.types.nullOr lib.types.str;
    };
  };
}
