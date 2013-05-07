--------------------------------------------------------------------------------
-- lang/root.lua: targeting schema root
--------------------------------------------------------------------------------

--[[

Targeting API object:

Note: visibility_rule operations moved to the object itself
so that partial filtering can be constructed.

targeting_api:visible_only_to()
targeting_api:visible_except_to() -- In primary mode does "not", in partial does (what?!)

---

targeting_api.op:b_true()
targeting_api.op:b_false()

targeting_api.op:b_and(...)
targeting_api.op:b_or(...)
targeting_api.op:b_not(a)

targeting_api.op:n_eq(lhs, rhs)
targeting_api.op:n_neq(lhs, rhs)
targeting_api.op:n_gt(lhs, rhs)
targeting_api.op:n_gte(lhs, rhs)
targeting_api.op:n_lt(lhs, rhs)
targeting_api.op:n_lte(lhs, rhs)

targeting_api.op:n_add(...)
targeting_api.op:n_sub(...)
targeting_api.op:n_mul(...)
targeting_api.op:n_div(...)
targeting_api.op:n_mod(lhs, rhs)

targeting_api.op:n_min(...)
targeting_api.op:n_max(...)

targeting_api.op:n_abs(a)
targeting_api.op:n_unm(a)

targeting_api.op:is_one_of(lhs, ...)

---

targeting_api.data.country_name
targeting_api.data.city_name
targeting_api.data.gender_id
targeting_api.data.age
targeting_api.data.hourofday
targeting_api.data.dayofweek -- Warning! Must be in os.date() format (Sunday is 1).
targeting_api.data.application_type_id
targeting_api.data.application_id
targeting_api.data.browser_id
targeting_api.data.os_id
targeting_api.data.education_id
targeting_api.data.matrimonial_id
targeting_api.data.application_theme_id

targeting_api:application_has_keywords(...)

--]]

--------------------------------------------------------------------------------

lang:tag "ui.group.root" -- special group
{
  render:js
  {
    -- mixin
    grouping = { ["ui.group.root"] = true };
  };

  render:lua {}; -- TODO: Remove, neccessary for successful validation
}

--------------------------------------------------------------------------------

lang:root "root"

--------------------------------------------------------------------------------

lang:record "root"
{
  "targeting";

  render:js [[Root]]
  {
    [[${1}]];
  };

  render:lua
  {
    [[${1}]];
  };
}
