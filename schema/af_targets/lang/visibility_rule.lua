--------------------------------------------------------------------------------
-- lang/visibility_rule: visibility rule base
--------------------------------------------------------------------------------

lang:list_func "visibility_rule.list"
{
  min_children_num = 1;
  "visibility_rule";

  render:js [[Targeting rules]]
  {
    before = [[<ol>${li}]];
    glue = [[</li>${li}]];
    after = [[</li></ol>]];
  };

  render:lua
  {
    before = [[]];
    glue = [[,]] .. "\n";
    after = [[]];
  };
}

--------------------------------------------------------------------------------

lang:type "visibility_rule"
{
  render:js [[Targeting rules]]
  {
    label = [[R]];
  };

  render:lua
  {
    [[${1}]];
  };
}
