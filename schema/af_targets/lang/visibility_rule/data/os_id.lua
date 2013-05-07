--------------------------------------------------------------------------------
-- lang/visibility_rule/os_id.lua: os enum
--------------------------------------------------------------------------------

lang:enum "data.os_id"
{
  "data.os_id.windows_before_xp";
  "data.os_id.windows_xp";
  "data.os_id.windows_vista";
  "data.os_id.windows_7";
  "data.os_id.linux";
  "data.os_id.mac_os_before_10_4";
  "data.os_id.os_x_10_4";
  "data.os_id.os_x_10_5";
  "data.os_id.os_x_10_6";
  "data.os_id.mobile_device";
  "data.os_id.other";

  render:js [[Operating system]]
  {
    label = [[O]];
    { [[Windows below XP]] };
    { [[Windows XP]] };
    { [[Windows Vista]] };
    { [[Windows 7]] };
    { [[Linux]] };
    { [[Mac OS below 10.4]] };
    { [[OS X 10.4]] };
    { [[OS X 10.5]] };
    { [[OS X 10.6]] };
    { [[Mobile]] };
    { [[Other]] };
  };

  -- TODO: Use actual constants from the const.lua here
  render:lua
  {
    { [[1]] };
    { [[2]] };
    { [[3]] };
    { [[4]] };
    { [[5]] };
    { [[6]] };
    { [[7]] };
    { [[8]] };
    { [[9]] };
    { [[10]] };
    { [[0]] };
  };
}
