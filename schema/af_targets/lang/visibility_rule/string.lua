--------------------------------------------------------------------------------
-- lang/visibility_rule/string.lua: string visibility rules
--------------------------------------------------------------------------------

lang:type "string"
{
  init = "string_value";

  render:js [[String]]
  {
    label = [[S]];
  };

  render:lua
  {
    [[${1}]];
  };
}

--------------------------------------------------------------------------------

lang:value "string_value"
{
  type = "string";
  data_type = "string";
  default = "";

  render:js [[String]]
  {
    [[&laquo;${1}&raquo;]];
  };

  render:lua
  {
    [[${1}]];
  };
}
