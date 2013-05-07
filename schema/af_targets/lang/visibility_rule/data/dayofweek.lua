--------------------------------------------------------------------------------
-- lang/visibility_rule/dayofweek.lua: day of week enum
--------------------------------------------------------------------------------

lang:enum "data.dayofweek"
{
  "data.dayofweek.monday";
  "data.dayofweek.tuesday";
  "data.dayofweek.wednesday";
  "data.dayofweek.thursday";
  "data.dayofweek.friday";
  "data.dayofweek.saturday";
  "data.dayofweek.sunday";

  render:js [[Weekday]]
  {
    label = [[D]];
    { [[Monday]] };
    { [[Tuesday]] };
    { [[Wednesday]] };
    { [[Thursday]] };
    { [[Friday]] };
    { [[Saturday]] };
    { [[Sunday]] };
  };

  render:lua -- Note weird values. Matching os.date() format.
  {
    { [[2]] }; -- Monday
    { [[3]] }; -- Tuesday
    { [[4]] }; -- Wednesday
    { [[5]] }; -- Thursday
    { [[6]] }; -- Friday
    { [[7]] }; -- Saturday
    { [[1]] }; -- Sunday
  };
}
