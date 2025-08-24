local wezterm = require 'wezterm'

return {
  -- フォント設定（フォールバック込み）
  font = wezterm.font_with_fallback({
    "UDEV Gothic 35NF",   -- メインフォント
    "Noto Sans CJK JP",   -- 日本語用フォント
    "Noto Color Emoji",   -- 絵文字
  }),
  font_size = 12.0,

  -- 日本語IME対応
  use_ime = true,

  -- カラー設定
  colors = {
    compose_cursor = "#81D8D0",  -- IMEカーソル色（ティファニーブルー）
  },
  -- キーバインド設定
  keys = {
    {
      key = "Enter",
      mods = "SHIFT",
      action = wezterm.action.SendString("\n"),
    },
  },
}
