" Color palette
let s:bg             = "#151515"
let s:darker_grey    = "#1c1c1c"
let s:dark_grey      = "#262626"
let s:grey           = "#888888"
let s:blue_grey      = "#a0a8b0"
let s:light_grey     = "#d8dee9"
let s:white          = "#ffffff"
let s:dark_red       = "#902020"
let s:red            = "#cf6a4c"
let s:red_orange     = "#ffb964"
let s:bright_orange  = "#fad07a"
let s:pale_gold      = "#dad085"
let s:pink           = "#f0a0c0"
let s:lilac          = "#c6b6ee"
let s:dark_blue      = "#2b5b77"
let s:deep_blue      = "#0d61ac"
let s:blue           = "#8197bf"
let s:bright_blue    = "#7697d6"
let s:cyan           = "#8fbfdc"
let s:blue_green     = "#668799"
let s:green          = "#799d6a"
let s:bright_green   = "#70b950"
let s:brighter_green = "#65c254"
let s:light_green    = "#99ad6a"
let s:dark_green     = "#556633"

let s:c_bg = "233"
let s:c_dark_grey = "235"
let s:c_grey = "59"
let s:c_blue_grey = "145"
let s:c_light_grey = "189"
let s:c_dark_red = "88"
let s:c_red_orange = "215"
let s:c_bright_orange = "221"
let s:c_green = "22"
let s:c_deep_blue = "25"
let s:c_white = "231"
let s:c_grey = "243"

let g:airline#themes#jellybeans#palette = {}
let s:modified = { 'airline_c': [ s:red_orange, '', s:c_red_orange, '', '' ] }

" Normal mode
let s:N1 = [ s:darker_grey , s:bright_blue , s:c_light_grey , s:c_deep_blue  ]
let s:N2 = [ s:white , s:dark_grey , s:c_white , s:c_dark_grey  ]
let s:N3 = [ s:grey , s:bg , s:c_grey , s:c_bg  ]
let g:airline#themes#jellybeans#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#jellybeans#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [ s:darker_grey , s:lilac , s:c_white , s:c_green  ]
let s:I2 = s:N2
let s:I3 = [ s:white , s:darker_grey , s:c_white , s:c_bg  ]
let g:airline#themes#jellybeans#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#jellybeans#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [ s:darker_grey , s:cyan , s:c_white , s:c_dark_red ]
let s:V2 = s:N2
let s:V3 = s:I3
let g:airline#themes#jellybeans#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#jellybeans#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [ s:darker_grey , s:bright_orange , s:c_dark_red, s:c_bg ]
let s:R2 = s:N2
let s:R3 = s:I3
let g:airline#themes#jellybeans#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#jellybeans#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:light_grey , s:dark_grey , s:c_grey , s:c_dark_grey ]
let s:IN2 = [ s:grey , s:bg , s:c_grey , s:c_bg ]
let s:IN3 = [ s:grey , s:bg , s:c_grey , s:c_bg ]
let g:airline#themes#jellybeans#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#jellybeans#palette.inactive_modified = s:modified

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:white , s:dark_grey , s:c_white , s:c_dark_grey  ]
let s:CP2 = [ s:white , s:blue , s:c_white , s:c_dark_grey  ]
let s:CP3 = [ s:white , s:deep_blue , s:c_white , s:c_deep_blue  ]

let g:airline#themes#jellybeans#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
