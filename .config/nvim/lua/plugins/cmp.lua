-- https://github.com/Saghen/blink.cmp
return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',
  version = '*',
  opts = {
    keymap = { preset = 'default' },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },

    completion = {
      ghost_text = {
        enabled = false,
        show_with_selection = true,
        show_without_selection = false,
        show_with_menu = true,
        show_without_menu = true,
      },
    },
  },
}
