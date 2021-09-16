local vim = vim
local api = vim.api
local g = vim.g

g.mapleader = ','
g.maplocalleader = ","
api.nvim_set_keymap('i', 'jk', '<esc>', { noremap = true, silent = true })

