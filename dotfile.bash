#!/bin/bash

mkdir ~/.config/

echo "configuring hyprland..."
sleep 1
mkdir ~/.config/hypr/
cat << EOF > ~/.config/hypr/hyprland.conf
# This is an example Hyprland config file.
#
# Refer to the wiki for more information.

#
# Please note not all available settings / options are set here.
# For a full list, see the wiki
#

# See https://wiki.hyprland.org/Configuring/Monitors/
monitor=,preferred,auto,auto


# See https://wiki.hyprland.org/Configuring/Keywords/ for more

# Execute your favorite apps at launch
# exec-once = waybar & hyprpaper & firefox

# Source a file (multi-file configs)
# source = ~/.config/hypr/myColors.conf

# Some default env vars.
env = XCURSOR_SIZE,24

# For all categories, see https://wiki.hyprland.org/Configuring/Variables/
input {
    kb_layout = us
    kb_variant = dvorak
    kb_model =
    kb_options =
    kb_rules =

    follow_mouse = 1

    touchpad {
        natural_scroll = false
    }

    sensitivity = 0 # -1.0 - 1.0, 0 means no modification.

    force_no_accel = true
}

general {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more

    gaps_in = 5
    gaps_out = 20
    border_size = 2
    col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
    col.inactive_border = rgba(595959aa)

    layout = dwindle
}

decoration {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more

    rounding = 10
    blur = true
    blur_size = 3
    blur_passes = 1
    blur_new_optimizations = true

    drop_shadow = true
    shadow_range = 4
    shadow_render_power = 3
    col.shadow = rgba(1a1a1aee)
}

animations {
    enabled = true

    # Some default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more

    bezier = myBezier, 0.05, 0.9, 0.1, 1.05

    animation = windows, 1, 7, myBezier
    animation = windowsOut, 1, 7, default, popin 80%
    animation = border, 1, 10, default
    animation = borderangle, 1, 8, default
    animation = fade, 1, 7, default
    animation = workspaces, 1, 6, default
}

dwindle {
    # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
    pseudotile = true # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
    preserve_split = true # you probably want this
}

master {
    # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
    new_is_master = true
}

gestures {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more
    workspace_swipe = false
}

# Example per-device config
# See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs for more
device:epic-mouse-v1 {
    sensitivity = -0.5
}

# Example windowrule v1
# windowrule = float, ^(kitty)$
# Example windowrule v2
# windowrulev2 = float,class:^(kitty)$,title:^(kitty)$
# See https://wiki.hyprland.org/Configuring/Window-Rules/ for more


# See https://wiki.hyprland.org/Configuring/Keywords/ for more
$mainMod = SUPER

# Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
bind = $mainMod, T, exec, alacritty
bind = $mainMod, C, killactive,
bind = $mainMod, Q, exit,
bind = $mainMod, E, exec, dolphin
bind = $mainMod, V, togglefloating,
bind = $mainMod, P, exec, wofi --show drun
bind = $mainMod SHIFT, P, pseudo, # dwindle
bind = $mainMod, J, togglesplit, # dwindle

# Move focus with mainMod + arrow keys
bind = $mainMod, left, movefocus, l
bind = $mainMod, right, movefocus, r
bind = $mainMod, up, movefocus, u
bind = $mainMod, down, movefocus, d

# Switch workspaces with mainMod + [0-9]
bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

# Move active window to a workspace with mainMod + SHIFT + [0-9]
bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10

# Scroll through existing workspaces with mainMod + scroll
bind = $mainMod, mouse_down, workspace, e+1
bind = $mainMod, mouse_up, workspace, e-1

# Move/resize windows with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow
EOF

# thanks to the https://github.com/catppuccin/alacritty for the theme
echo "configuring alacritty..."
sleep 1
mkdir ~/.config/alacritty/
cat << EOF > ~/.config/alacritty/alacritty.yml
font:
  normal:
    family: FiraCode
    style: Regular

  bold:
    family: FiraCode
    style: Bold

  italic:
    family: FiraCode
    style: Italic

  bold_italic:
    family: FiraCode
    style: Bold Italic

  size: 15

colors:
    # Default colors
    primary:
        background: "#303446" # base
        foreground: "#C6D0F5" # text
        # Bright and dim foreground colors
        dim_foreground: "#C6D0F5" # text
        bright_foreground: "#C6D0F5" # text

    # Cursor colors
    cursor:
        text: "#303446" # base
        cursor: "#F2D5CF" # rosewater
    vi_mode_cursor:
        text: "#303446" # base
        cursor: "#BABBF1" # lavender

    # Search colors
    search:
        matches:
            foreground: "#303446" # base
            background: "#A5ADCE" # subtext0
        focused_match:
            foreground: "#303446" # base
            background: "#A6D189" # green
        footer_bar:
            foreground: "#303446" # base
            background: "#A5ADCE" # subtext0

    # Keyboard regex hints
    hints:
        start:
            foreground: "#303446" # base
            background: "#E5C890" # yellow
        end:
            foreground: "#303446" # base
            background: "#A5ADCE" # subtext0

    # Selection colors
    selection:
        text: "#303446" # base
        background: "#F2D5CF" # rosewater

    # Normal colors
    normal:
        black: "#51576D" # surface1
        red: "#E78284" # red
        green: "#A6D189" # green
        yellow: "#E5C890" # yellow
        blue: "#8CAAEE" # blue
        magenta: "#F4B8E4" # pink
        cyan: "#81C8BE" # teal
        white: "#B5BFE2" # subtext1

    # Bright colors
    bright:
        black: "#626880" # surface2
        red: "#E78284" # red
        green: "#A6D189" # green
        yellow: "#E5C890" # yellow
        blue: "#8CAAEE" # blue
        magenta: "#F4B8E4" # pink
        cyan: "#81C8BE" # teal
        white: "#A5ADCE" # subtext0

    # Dim colors
    dim:
        black: "#51576D" # surface1
        red: "#E78284" # red
        green: "#A6D189" # green
        yellow: "#E5C890" # yellow
        blue: "#8CAAEE" # blue
        magenta: "#F4B8E4" # pink
        cyan: "#81C8BE" # teal
        white: "#B5BFE2" # subtext1

    indexed_colors:
        - { index: 16, color: "#EF9F76" }
        - { index: 17, color: "#F2D5CF" }
EOF

echo "configuring neovim..."
sleep 1
mkdir ~/.config/nvim/
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
cat << EOF > ~/.config/nvim/init.lua
require("adji")
EOF
mkdir ~/.config/nvim/lua/
mkdir ~/.config/nvim/lua/adji
cat << EOF > ~/.config/nvim/lua/adji/init.lua
require("adji.set")
require("adji.remap")
require("adji.packer")
EOF
cat << EOF > ~/.config/nvim/lua/adji/packer.lua
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use { "catppuccin/nvim", as = "catppuccin" }

    use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
end)
EOF
cat << EOF > ~/.config/nvim/lua/adji/remap.lua
vim.g.mapleader = ","
vim.keymap.set("i", "<leader>.", "<Esc>")
vim.keymap.set("n", "<leader>t", vim.cmd.terminal)
vim.keymap.set("n", "<leader>u", vim.cmd.Ex)
EOF
cat << EOF > ~/.config/nvim/lua/adji/remap.lua
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.cmd.colorscheme "catppuccin-frappe"

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
EOF

echo "configuring ananicy-cpp..."
sleep 1
git clone https://gitlab.com/ananicy-cpp/ananicy-cpp.git
cd ~/ananicy-cpp
cmake -B build \
  -DCMAKE_RELEASE_TYPE=Release \
  -S .
cmake --build build --target ananicy-cpp
sudo cmake --install build --component Runtime
