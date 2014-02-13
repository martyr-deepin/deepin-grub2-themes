# GRUB2 gfxmenu Linux Deepin theme
# Designed for any resolution

# Global Property
title-text: ""
desktop-image: "background.png"
desktop-color: "#000000"
terminal-font: "Unifont Regular 16"
terminal-box: "{{.TerminalBox}}"

# Show the boot menu
+ boot_menu {
  top = 20%
  left = 15%
  width = 70%
  height = 60%
  item_font = "Unifont Regular 16"
  item_color = "{{.ItemColor}}"
  selected_item_color = "{{.SelectedItemColor}}"
  icon_width = 36
  icon_height = 36
  item_icon_space = 12
  item_height = 36
  item_spacing = 0
  menu_pixmap_style = "{{.MenuPixmapStyle}}"
  scrollbar = true
  scrollbar_width = 8
  scrollbar_thumb = "{{.ScrollbarThumb}}"
}

# Show the timeout message
+ progress_bar {
  id = "__timeout__"
  top = 85%
  left = 35%
  width = 30%
  show_text = true
  font = "Unifont Regular 16"
  text_color = "#a34545"
  text = "Booting in %d seconds"
  bar_style = "{{.MenuPixmapStyle}}"
  highlight_style = "empty_*.png"
}
