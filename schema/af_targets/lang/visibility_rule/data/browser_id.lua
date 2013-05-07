--------------------------------------------------------------------------------
-- lang/visibility_rule/browser_id.lua: browser enum
--------------------------------------------------------------------------------

lang:enum "data.browser_id"
{
  "data.browser_id.google_chrome";
  "data.browser_id.firefox_2";
  "data.browser_id.firefox_3";
  "data.browser_id.internet_explorer_6";
  "data.browser_id.internet_explorer_7";
  "data.browser_id.internet_explorer_8";
  "data.browser_id.opera_9";
  "data.browser_id.opera_10_plus";
  "data.browser_id.safari";
  "data.browser_id.other";

  render:js [[Browser]]
  {
    label = [[B]];
    { [[Google Chrome]] };
    { [[Firefox 2]] };
    { [[Firefox 3]] };
    { [[IE 6]] };
    { [[IE 7]] };
    { [[IE 8]] };
    { [[Opera 9]] };
    { [[Opera 10]] };
    { [[Safari]] };
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
    { [[0]] };
  };
}
