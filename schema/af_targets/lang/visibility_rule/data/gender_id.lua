--------------------------------------------------------------------------------
-- lang/visibility_rule/gender_id.lua: gender enum
--------------------------------------------------------------------------------

lang:enum "data.gender_id"
{
  "data.gender_id.male";
  "data.gender_id.female";
  "data.gender_id.unknown";

  render:js [[Sex]]
  {
    label = [[S]];
    { [[Male]] };
    { [[Female]] };
    { [[Unknown]] };
  };

  -- TODO: Use actual constants from the const.lua here
  render:lua
  {
    { [[1]] }; -- Male
    { [[2]] }; -- Female
    { [[0]] }; -- Unknown
  };
}
