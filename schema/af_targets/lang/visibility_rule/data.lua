--------------------------------------------------------------------------------
-- lang/visibility_rule/data.lua: Vtarg visibility rules
--------------------------------------------------------------------------------

local twithdefaults = import 'lua-nucleo/table-utils.lua' { 'twithdefaults' }

local is_one_of_noarg = function(name)
  return function(data)
    local list_item_type = data[1]
    data[1] = name .. ".list"

    lang:func (name) (data)

    lang:list_func (name .. ".list")
    {
      min_children_num = 1;

      list_item_type;

      render:js ([[List]])
      {
        before = [[]];
        glue = [[, ]];
        after = [[]];
      };

      render:lua
      {
        before = [[]]; -- Note no braces
        glue = [[, ]];
        after = [[]];
      };
    }
  end
end

--------------------------------------------------------------------------------

is_one_of_noarg "visibility_rule.country_name.is_one_of"
{
  type = "visibility_rule";
  "string";

  render:js [[Only for given countries]]
  {
    [[Only for countries: ${1}]];
  };

  render:lua
  {
    [[targeting_api.op:is_one_of(targeting_api.data.country_name, ${1})]];
  };
}

is_one_of_noarg "visibility_rule.city_id.is_one_of"
{
  type = "visibility_rule";
  "string";

  render:js [[Only for given cities]]
  {
    [[Only for cities: ${1}]];
  };

  render:lua
  {
    [[targeting_api.op:is_one_of(targeting_api.data.city_name, ${1})]];
  };
}

is_one_of_noarg "visibility_rule.dayofweek.is_one_of"
{
  type = "visibility_rule";
  "data.dayofweek";

  render:js [[Only for given weekdays]]
  {
    [[Only for weekdays: ${1}]];
  };

  render:lua
  {
    [[targeting_api.op:is_one_of(targeting_api.data.country_id, ${1})]];
  };
}

lang:func "visibility_rule.gender_id.is"
{
  type = "visibility_rule";
  "data.gender_id";

  render:js [[Only for given sex]]
  {
    [[Only for: ${1}]];
  };

  render:lua
  {
    [[targeting_api.op:n_eq(targeting_api.data.gender_id, ${1})]];
  };
}

lang:func "visibility_rule.age"
{
  type = "number";

  render:js [[Age of user]]
  {
    [[age of user]];
  };

  render:lua
  {
    [[targeting_api.data.age]];
  };
}

lang:func "visibility_rule.hourofday"
{
  type = "number";

  render:js [[Current hour]]
  {
    [[current hour]];
  };

  render:lua
  {
    [[targeting_api.data.hourofday]];
  };
}

is_one_of_noarg "visibility_rule.application_type_id.is_one_of"
{
  type = "visibility_rule";
  "data.application_type_id";

  render:js [[Only for given application types]]
  {
    [[Only for application types: ${1}]];
  };

  render:lua
  {
    [[targeting_api.op:is_one_of(targeting_api.data.application_type_id, ${1})]];
  };
}

lang:func "visibility_rule.application_id"
{
  type = "number";

  render:js [[Application id]]
  {
    [[application id]];
  };

  render:lua
  {
    [[targeting_api.data.application_id]];
  };
}

is_one_of_noarg "visibility_rule.browser_id.is_one_of"
{
  type = "visibility_rule";
  "data.browser_id";

  render:js [[Only for given browsers]]
  {
    [[Only for browsers: ${1}]];
  };

  render:lua
  {
    [[targeting_api.op:is_one_of(targeting_api.data.browser_id, ${1})]];
  };
}

is_one_of_noarg "visibility_rule.os_id.is_one_of"
{
  type = "visibility_rule";
  "data.os_id";

  render:js [[Only for given OS(s)]]
  {
    [[Only for OS(s): ${1}]];
  };

  render:lua
  {
    [[targeting_api.op:is_one_of(targeting_api.data.os_id, ${1})]];
  };
}

is_one_of_noarg "visibility_rule.education_id.is_one_of"
{
  type = "visibility_rule";
  "data.education_id";

  render:js [[Only for given education grades]]
  {
    [[Only for education grades: ${1}]];
  };

  render:lua
  {
    [[targeting_api.op:is_one_of(targeting_api.data.education_id, ${1})]];
  };
}

is_one_of_noarg "visibility_rule.matrimonial_id.is_one_of"
{
  type = "visibility_rule";
  "data.matrimonial_id";

  render:js [[Only for given marital statuses]]
  {
    [[Only for marital statuses: ${1}]];
  };

  render:lua
  {
    [[targeting_api.op:is_one_of(targeting_api.data.matrimonial_id, ${1})]];
  };
}

is_one_of_noarg "visibility_rule.application_theme_id.is_one_of"
{
  type = "visibility_rule";
  "data.application_theme_id";

  render:js [[Only for applications of given subject areas]]
  {
    [[Only for applications of subject areas: ${1}]];
  };

  render:lua
  {
    [[targeting_api.op:is_one_of(targeting_api.data.application_theme_id, ${1})]];
  };
}

lang:list_func "visibility_rule.application_has_keywords"
{
  min_children_num = 1;
  type = "visibility_rule";
  "string";

  render:js [[Only for applications having given keywords]]
  {
    before = [[Only for applications having given keywords: ]];
    glue = [[, ]];
    after = [[]];
  };

  render:lua
  {
    before = [[targeting_api:application_has_keywords(]];
    glue = [[, ]];
    after = [[)]];
  };
}
