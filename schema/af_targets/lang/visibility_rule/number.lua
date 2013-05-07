--------------------------------------------------------------------------------
-- lang/visibility_rule/number.lua: numeric visibility rules
--------------------------------------------------------------------------------

local twithdefaults = import 'lua-nucleo/table-utils.lua' { 'twithdefaults' }

--------------------------------------------------------------------------------

local is_one_of_arg = function(name)
  return function(data)
    -- Note that table.insert() is not available here
    -- TODO: Perhaps it should be available.
    for i = #data, 2, -1 do
      data[i + 1] = data[i]
    end
    data[2] = name .. ".list"

    lang:func (name) (data)

    lang:list_func (name .. ".list")
    {
      min_children_num = 1;

      data[1];

      render:js ([[Список]])
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

lang:type "number"
{
  init = "number_value";

  render:js [[Number]]
  {
    label = [[N]];
  };

  render:lua
  {
    [[${1}]];
  };
}

--------------------------------------------------------------------------------

lang:value "number_value"
{
  type = "number";
  data_type = "number";
  default = 0;

  render:js [[Constant]]
  {
  };

  render:lua
  {
    [[${1}]];
  };
}

--------------------------------------------------------------------------------

lang:list_func "visibility_rule.number.add"
{
  min_children_num = 2;

  type = "number";
  "number";

  render:js [[<i>A</i> <b>+</b> <i>B</i>]]
  {
    before = [[( ]];
    glue = [[ <b>+</b> ]];
    after = [[ )]];
  };

  render:lua
  {
    before = [[targeting_api.op:n_add((]];
    glue = [[, ]];
    after = [[)]];
  };
}

lang:list_func "visibility_rule.number.sub"
{
  min_children_num = 2;

  type = "number";
  "number";

  render:js [[<i>A</i> <b>&ndash;</b> <i>B</i>]]
  {
    before = [[( ]];
    glue = [[ <b>&ndash;</b> ]];
    after = [[ )]];
  };

  render:lua
  {
    before = [[targeting_api.op:n_sub((]];
    glue = [[, ]];
    after = [[)]];
  };
}

lang:list_func "visibility_rule.number.mul"
{
  min_children_num = 2;

  type = "number";
  "number";

  render:js [[<i>A</i> <b>*</b> <i>B</i>]]
  {
    before = [[( ]];
    glue = [[ <b>*</b> ]];
    after = [[ )]];
  };

  render:lua
  {
    before = [[targeting_api.op:n_mul((]];
    glue = [[, ]];
    after = [[)]];
  };
}

lang:list_func "visibility_rule.number.div"
{
  min_children_num = 2;

  type = "number";
  "number";

  render:js [[<i>A</i> <b>/</b> <i>B</i>]]
  {
    before = [[( ]];
    glue = [[ <b>/</b> ]];
    after = [[ )]];
  };

  render:lua
  {
    before = [[targeting_api.op:n_div((]];
    glue = [[, ]];
    after = [[)]];
  };
}

lang:func "visibility_rule.number.unm"
{
  type = "number";
  "number";

  render:js [[<b>&ndash;</b><i>A</i>]]
  {
    [[<b>&ndash;</b>${1}]];
  };

  render:lua
  {
    [[targeting_api.op:n_unm(${1})]];
  };
}

lang:func "visibility_rule.number.mod"
{
  type = "number";
  "number";
  "number";

  render:js [[<i>A</i> <b>MOD</b> <i>B</i>]]
  {
    [[${1}&nbsp;<b>MOD</b>&nbsp;${2}]];
  };

  render:lua
  {
    [[targeting_api.op:n_mod(${1}, ${2})]];
  };
}

lang:list_func "visibility_rule.number.max"
{
  min_children_num = 2;

  type = "number";
  "number";

  render:js [[<b>MAX</b>(<i>A</i>, <i>B</i>)]]
  {
    before = [[<b>MAX</b> ( ]];
    glue = [[ <b>,</b> ]];
    after = [[ )]];
  };

  render:lua
  {
    before = [[targeting_api.op:n_max((]];
    glue = [[, ]];
    after = [[)]];
  };
}

lang:list_func "visibility_rule.number.min"
{
  min_children_num = 2;

  type = "number";
  "number";

  render:js [[<b>MIN</b>(<i>A</i>, <i>B</i>)]]
  {
    before = [[<b>MIN</b> ( ]];
    glue = [[ <b>,</b> ]];
    after = [[ )]];
  };

  render:lua
  {
    before = [[targeting_api.op:n_min((]];
    glue = [[, ]];
    after = [[)]];
  };
}

--------------------------------------------------------------------------------

lang:func "visibility_rule.number.lt"
{
  type = "visibility_rule";
  "number";
  "number";

  render:js [[A <b>&lt;</b> B]]
  {
    [[${1} <b>&lt;</b> ${2}]]
  };

  render:lua
  {
    [[targeting_api.op:n_lt(${1}, ${2})]];
  };
}

lang:func "visibility_rule.number.lte"
{
  type = "visibility_rule";
  "number";
  "number";

  render:js [[A <b>&lt;=</b> B]]
  {
    [[${1} <b>&lt;=</b> ${2}]]
  };

  render:lua
  {
    [[targeting_api.op:n_lte(${1}, ${2})]];
  };
}

lang:func "visibility_rule.number.gt"
{
  type = "visibility_rule";
  "number";
  "number";

  render:js [[A <b>&gt;</b> B]]
  {
    [[${1} <b>&gt;</b> ${2}]]
  };

  render:lua
  {
    [[targeting_api.op:n_gt(${1}, ${2})]];
  };
}

lang:func "visibility_rule.number.gte"
{
  type = "visibility_rule";
  "number";
  "number";

  render:js [[A <b>&gt;=</b> B]]
  {
    [[${1} <b>&gt;=</b> ${2}]]
  };

  render:lua
  {
    [[targeting_api.op:n_gte(${1}, ${2})]];
  };
}

--------------------------------------------------------------------------------

lang:func "visibility_rule.number.eq"
{
  type = "visibility_rule";
  "number";
  "number";

  render:js [[A <b>==</b> B]]
  {
    [[${1} <b>==</b> ${2}]]
  };

  render:lua
  {
    [[targeting_api.op:n_eq(${1}, ${2})]];
  };
}

is_one_of_arg "visibility_rule.number.is_one_of"
{
  type = "visibility_rule";
  "number";

  render:js [[One from given numbers]]
  {
    [[${1} is one of ${2}]];
  };

  render:lua
  {
    [[targeting_api.op:is_one_of(${1}, ${2})]];
  };
}

lang:func "visibility_rule.number.neq"
{
  type = "visibility_rule";
  "number";
  "number";

  render:js [[A <b>&ne;</b> B]]
  {
    [[${1} <b>&ne;</b> ${2}]];
  };

  render:lua
  {
    [[targeting_api.op:n_neq(${1}, ${2})]];
  };
}
