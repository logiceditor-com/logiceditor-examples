--------------------------------------------------------------------------------
-- lang/visibility_rule/application_theme_id.lua: application_theme status enum
--------------------------------------------------------------------------------

lang:enum "data.application_theme_id"
{
  "data.application_theme_id.games";
  "data.application_theme_id.tests";
  "data.application_theme_id.dating";
  "data.application_theme_id.chats";
  "data.application_theme_id.stars";
  "data.application_theme_id.music";
  "data.application_theme_id.science";
  "data.application_theme_id.culture";
  "data.application_theme_id.photo_and_video";
  "data.application_theme_id.movies_and_tv";
  "data.application_theme_id.services_news_tools";
  "data.application_theme_id.other";

  render:js [[Subject area]]
  {
    label = [[S]];
    { [[Games]]; };
    { [[Tests]]; };
    { [[Dating]]; };
    { [[Talks]]; };
    { [[Stars]]; };
    { [[Musics]]; };
    { [[Science]]; };
    { [[Culture]]; };
    { [[Photo and video]]; };
    { [[Movies and TV]]; };
    { [[Services, news and utilities]]; };
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
    { [[8]] };
    { [[9]] };
    { [[10]] };
    { [[11]] };
    { [[0]] };
  };
}
