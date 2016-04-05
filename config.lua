#!/usr/bin/luajit
local config = {
    _VERSION        = 'config 0.1',
    _DESCRIPTION    = '',
    _USAGE          = '',
    _URL            = 'github.com/fledo',
    _LICENSE        = [[
        Copyright (C) 2016  Fred Uggla

        This program is free software; you can redistribute it and/or modify
        it under the terms of the GNU General Public License as published by
        the Free Software Foundation; either version 2 of the License, or
        (at your option) any later version.

        This program is distributed in the hope that it will be useful,
        but WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
        GNU General Public License for more details.

        You should have received a copy of the GNU General Public License along
        with this program; if not, write to the Free Software Foundation, Inc.,
        51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

    ]]
}


-- ## argument handler
-- call arg[1] if it's a function
-- echo arg[1] if it's a string
if type(config[arg[1]]) == 'function' and arg[2] == nil then
    config[arg[1]]()
elseif type(config[arg[1]]) == 'string' then
    print(configk[arg[1]])
else
    print(config._USAGE)
end

