
:start
clr

:wait-for-space
mov out1 1[virtual-signal=signal-red]
slp 60
fig r2 [fluid=steam]
bgt r2 10000 :wait-for-space

:load-cell
mov out1 1[virtual-signal=signal-green]
slp 60

:wait-burn
mov out1 1[virtual-signal=signal-yellow]
; normally, 60 ticks = 1 second
mov r8 60[virtual-signal=signal-T]  ; ticks
; a fuel cell takes 200 s to burn
mul r8 200  ; seconds
slp r8
jmp :wait-for-space

