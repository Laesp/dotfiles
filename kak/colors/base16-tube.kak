##
## London Tube
## Jan T. Sott @ 
##

evaluate-commands %sh{
	base00='rgb:231F20'
	base01='rgb:1C3F95'
	base02='rgb:5A5758'
	base03='rgb:737171'
	base04='rgb:959CA1'
	base05='rgb:D9D8D8'
	base06='rgb:E7E7E8'
	base07='rgb:FFFFFF'
	base08='rgb:EE2E24'
	base09='rgb:F386A1'
	base0A='rgb:FFD204'
	base0B='rgb:00853E'
	base0C='rgb:85CEBC'
	base0D='rgb:009DDC'
	base0E='rgb:98005D'
	base0F='rgb:B06110'


## code
	echo "
		face global value ${base09}+b
		face global type ${base0A}
		face global identifier ${base08}
		face global string ${base0B}
		face global error ${base05},${base0B}
		face global keyword ${base0E}+b
		face global operator ${base05}
		face global attribute ${base09}
		face global comment ${base03}
		face global meta ${base0A}

"

## markup
	echo "
		face global title ${base0D}
		face global header ${base0D}
		face global bold ${base0A}
		face global italic ${base09}
		face global mono ${base0B}
		face global block ${base09}
		face global link ${base0D}
		face global bullet ${base0B}
		face global list ${base08}

"

## builtin
	echo "
		face global Default ${base05},${base00}
		face global PrimarySelection ${base07},${base0D}
		face global SecondarySelection ${base05},${base0D}
		face global PrimaryCursor ${base00},${base07}
		face global SecondaryCursor ${base00},${base05}
		face global LineNumbers ${base05},${base01}
		face global LineNumberCursor ${base05},rgb:282828+b
		face global MenuForeground ${base07},${base0D}
		face global MenuBackground ${base0D},${base01}
		face global MenuInfo ${base0D}
		face global Information ${base00},${base0D}
		face global Error ${base01},${base08}
		face global StatusLine ${base06},${base01}
		face global StatusLineMode ${base0A}
		face global StatusLineInfo ${base0D}
		face global StatusLineValue ${base0B}
		face global StatusCursor ${base02},${base0D}
		face global Prompt ${base0A},${base00}
		face global MatchingChar ${base0D},${base00}+b
		face global BufferPadding ${base0D},${base01}

"

}