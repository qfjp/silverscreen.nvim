-- Copyright (c) 2020-2021 shadmansaleh
-- MIT license, see LICENSE for more details.
-- Credit itchyny, jackno (lightline)
-- stylua: ignore
local colors = {
  darkgray   = "#1A1919",
  gray       = '#565454',
  lightgray  = '#868383',
  blue       = '#D8E0ED',
  purple     = '#E7C6D8',
  red        = "#EEDCDA",
  yellow     = '#EEDEC0',
  green      = '#CAEAA8',
  white      = '#C2C1C1',
  black      = '#0F0E0E',


  colorn5 = "#623250",
  colorn4 = "#AD5C8E",
  colorn3 = "#D087B3",
  colorn2 = "#DDAEC9",
  colorn1 = "#E7C6D8",

  colorf5 = "#1A1919",
  colorf4 = "#565454",
  colorf3 = "#868383",
  colorf2 = "#AAA8A8",
  colorf1 = "#C2C1C1",

  colorp5 = "#72855E",
  colorp4 = "#93AB7A",
  colorp3 = "#ACC78E",
  colorp2 = "#BDDB9D",
  colorp1 = "#CAEAA8"
}

return {
  normal = {
    a = { bg = colors.black, fg = colors.white, gui = 'bold' },
    b = { bg = colors.gray, fg = colors.white},
    c = { bg = colors.lightgray, fg = colors.white },
  },
  insert = {
    a = { bg = colors.white, fg = colors.black, gui = 'bold' },
    b = { bg = colors.gray, fg = colors.white },
    c = { bg = colors.lightgray, fg = colors.white },
  },
  visual = {
    a = { bg = colors.white, fg = colors.black, gui = 'bold' },
    b = { bg = colors.gray, fg = colors.white },
    c = { bg = colors.lightgray, fg = colors.white },
  },
  replace = {
    a = { bg = colors.white, fg = colors.black, gui = 'bold' },
    b = { bg = colors.gray, fg = colors.white },
    c = { bg = colors.lightgray, fg = colors.white },
  },
  command = {
    a = { bg = colors.white, fg = colors.black, gui = 'bold' },
    b = { bg = colors.gray, fg = colors.white },
    c = { bg = colors.lightgray, fg = colors.white },
  },
  active = {
    a = { bg = colors.white, fg = colors.black, gui = 'underdouble' },
    b = { bg = colors.gray, fg = colors.black },
    c = { bg = colors.lightgray, fg = colors.darkgray, gui = "italic,underdouble"},
  },
  inactive = {
    a = { bg = colors.lightgray, fg = colors.gray, gui = 'underdouble' },
    b = { bg = colors.gray, fg = colors.black },
    c = { bg = colors.lightgray, fg = colors.darkgray, gui = "italic,underdouble"},
  },
}
