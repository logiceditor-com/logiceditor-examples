--------------------------------------------------------------------------------
-- lang/visibility_rule/application_type_id.lua: application type enum
--------------------------------------------------------------------------------

lang:enum "data.application_type_id"
{
  "data.application_type_id.vkontakte";
  "data.application_type_id.moymir";
  "data.application_type_id.standalone";

  render:js [[Application type]]
  {
    label = [[T]];
    { [[Facebook]] };
    { [[MySpace]] };
    { [[Standalone]] };
  };

  -- TODO: Use actual constants from the const.lua here
  render:lua
  {
    { [[1]] }; -- Facebook
    { [[2]] }; -- MySpace
    { [[0]] }; -- Standalone
  };
}
