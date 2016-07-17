#!/usr/bin/luajit
local dot = {
	version			= 'dot 0.2',
	description		= 'Handles configuration files',
	usage			= 'dot <action> <target>\n\taction:\t "import" from system or "deploy" to system.\n\ttarget:\t Name of specific configuration or "all."',
	url				= 'github.com/fledo/dots',
	license			= [[
		Copyright (C) 2016	Fred Uggla

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
local index = require('index')

function dot.deploy(file)
	if file == 'all' then
		for k,v in pairs(index) do
			dot.deploy(k)
		end 
	elseif index[file] then
		for k,v in pairs(index[file]) do
			copy(v[2], v[1])
		end 
	else
		print(file .. ' dot not found in index.')
	end
end

function dot.import(file)
	if file == 'all' then
		for k,v in pairs(index) do
			dot.import(k)
		end		
	elseif index[file] then
		for k,v in pairs(index[file]) do
			copy(v[1], v[2])
		end		
	else
		print(file .. ' dot not found in index.')
	end
end

function copy(from, to, force)
	if force == 'yes' then
		os.execute('cp -fv $HOME' .. from .. ' $HOME' .. to)
	else
		os.execute('cp -fiv $HOME' .. from .. ' $HOME' .. to)
	end 
end

-- ## argument handler
-- call arg[1] if it's a function
-- echo arg[1] if it's a string
if type(dot[arg[1]]) == 'function' and arg[2] ~= nil then
	dot[arg[1]](arg[2])
elseif type(dot[arg[1]]) == 'string' then
	print(dot[arg[1]])
else
	print(dot.version .. ", " .. dot.description .. "\n" .. dot.usage .. "\n" .. dot.url)
end
