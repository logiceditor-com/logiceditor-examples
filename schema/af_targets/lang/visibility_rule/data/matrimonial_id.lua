--------------------------------------------------------------------------------
-- lang/visibility_rule/matrimonial_id.lua: matrimonial status enum
--------------------------------------------------------------------------------

lang:enum "data.matrimonial_id"
{
  "data.matrimonial_id.married";
  "data.matrimonial_id.not_married";
  "data.matrimonial_id.divorced";
  "data.matrimonial_id.available";
  "data.matrimonial_id.in_active_search";
  "data.matrimonial_id.in_love";
  "data.matrimonial_id.its_complicated";
  "data.matrimonial_id.other";

  render:js [[Marital status]]
  {
    label = [[M]];
    { [[Married]]; };
    { [[Not married]]; };
    { [[Divorced]]; };
    { [[Available]]; };
    { [[In active search]]; };
    { [[In love]]; };
    { [[It's complicated]]; };
    { [[Other]]; };
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
    { [[0]] };
  };
}
