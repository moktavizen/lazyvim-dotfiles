-- remove mini.indentscope animation
return {
  "echasnovski/mini.indentscope",
  -- enabled = false,
  opts = {
    draw = { animation = require("mini.indentscope").gen_animation.none() },
  },
}
