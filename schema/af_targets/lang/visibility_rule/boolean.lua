--------------------------------------------------------------------------------
-- lang/visibility_rule/boolean.lua: boolean visibility rules
--------------------------------------------------------------------------------

lang:const "visibility_rule.boolean.true"
{
  type = "visibility_rule";

  render:js [[True]]
  {
    [[<b>True</b>]];
  };

  render:lua
  {
    [[targeting_api.op:b_true()]];
  };
}

lang:const "visibility_rule.boolean.false"
{
  type = "visibility_rule";

  render:js [[False]]
  {
    [[<b>False</b>]];
  };

  render:lua
  {
    [[targeting_api.op:b_false()]];
  };
}

lang:list_func "visibility_rule.boolean.and"
{
  min_children_num = 2;

  type = "visibility_rule";
  "visibility_rule";

  render:js [[<i>A</i> <b>AND</b> <i>B</i>]]
  {
    before = [[( ]];
    glue = [[ <b>AND</b> ]];
    after = [[ )]];
  };

  render:lua
  {
    before = [[targeting_api.op:b_and(]];
    glue = [[, ]];
    after = [[)]];
  };
}

lang:list_func "visibility_rule.boolean.or"
{
  min_children_num = 2;

  type = "visibility_rule";
  "visibility_rule";

  render:js [[<i>A</i> <b>OR</b> <i>B</i>]]
  {
    before = [[( ]];
    glue = [[ <b>OR</b> ]];
    after = [[ )]];
  };

  render:lua
  {
    before = [[targeting_api.op:b_or(]];
    glue = [[, ]];
    after = [[)]];
  };
}

lang:func "visibility_rule.boolean.not"
{
  type = "visibility_rule";
  "visibility_rule";

  render:js [[<b>NOT</b> <i>A</i>]]
  {
    [[<b>NOT</b>&nbsp;${1}]];
  };

  render:lua
  {
    [[targeting_api.op:b_not(${1})]];
  };
}
