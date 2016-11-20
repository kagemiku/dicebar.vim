scriptencoding utf-8

let s:dice_count = 0
let s:dice =
  \ reverse(["🎲       ", " 🎲      ", "  🎲     ", "   🎲    ", "    🎲   ", "     🎲  ", "      🎲 ", "       🎲"])

function! dicebar#dicebar() abort
  if s:dice_count == 8
    let s:dice_count = 0
  endif

  let ret = repeat(s:dice[s:dice_count], 16)

  let s:dice_count += 1
  return ret
endfunction


let s:dice2_count = 0
let s:dice2 =
  \ reverse(["⚅     ", " ⚄    ", "  ⚃   ", "   ⚂  ", "    ⚁ ", "     ⚀"])

function! dicebar#dicebar2() abort
  if s:dice2_count == 6
    let s:dice2_count = 0
  endif

  let ret = repeat(s:dice2[s:dice2_count], 16)

  let s:dice2_count += 1
  return ret
endfunction
