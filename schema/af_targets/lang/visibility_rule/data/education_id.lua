--------------------------------------------------------------------------------
-- lang/visibility_rule/education_id.lua: education enum
--------------------------------------------------------------------------------

lang:enum "data.education_id"
{
  "data.education_id.none";
  "data.education_id.primary";
  "data.education_id.secondary_specialized";
  "data.education_id.secondary_full";
  "data.education_id.higher_student";
  "data.education_id.specialist";
  "data.education_id.bachelor";
  "data.education_id.master";
  "data.education_id.candidate";
  "data.education_id.doctor";
  "data.education_id.other";

  render:js [[Education]]
  {
    label = [[З]];
    { [[no]] };
    { [[Primary]] };
    { [[Secondary specialized]] };
    { [[Secondary full]] };
    { [[Student]] };
    { [[Specialist]] };
    { [[Bachelor]] };
    { [[Master]] };
    { [[Postdoc]] };
    { [[PhD]] };
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
