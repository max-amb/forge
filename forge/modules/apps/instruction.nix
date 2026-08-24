{
  lib,
  ...
}:
{
  options = {
    description = lib.mkOption {
      type = lib.types.str;
      default = "";
      description = ''
        The description for the instruction to take.

        Should describe why the command is being performed.
        This is displayed to the user above the command.
      '';
    };

    command = lib.mkOption {
      type = lib.types.str;
      default = "";
      description = ''
        The command to execute in the test script.

        It will also be the one shown to the user if mockCommand is null.
      '';
    };

    mockCommand = lib.mkOption {
      type = lib.types.nullOr lib.types.str;
      default = null;
      description = ''
        The command to show to the user when we need to do more work behind the scenes (in command).

        For example, if some initialisation logic is required, command would be set to:
          # Initialisation logic
          action
        and mockCommand would be set to action.
      '';
    };
  };
}
