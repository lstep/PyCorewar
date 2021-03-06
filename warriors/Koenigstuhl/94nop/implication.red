;redcode-94
;name Implication
;author Ian Oversby
;strategy Die Hard with a little
;strategy more aggression hopefully
;assert 1

dest1   equ     1400
dest2   equ     5460
dest3   equ     725
pos1    equ     930     
pos2    equ     3359
pos3    equ     1009            ; clear old copies

sval    equ     3730

org     start

start   SPL.B   hstart, <-300
pstart  SPL.B   1,      <-300
        MOV.I   -1,     0
        MOV.I   -1,     0
        SPL.B   1,      {-300

silk    SPL.B   @0,     >dest1
        MOV.I   }-1,    >-1
        MOV.I   bomb,   >pos1
silk2   SPL.B   @0,     >dest2
        MOV.I   }-1,    >-1
        MOV.I   bomb,   >pos2   ; linear bombing
        MOV.I   bomb,   }pos3   ; anti-vamp
        MOV.I   {silk2, <silk3
silk3   JMP.B   @0,     >dest3
bomb    DAT.F   <2667,  <5334

for 74
        DAT.F   $0,     $0
rof

hstart  SPL.B   1,      <-400
        MOV.I   -1,     0
        SPL.B   1,      {-400

hard    SPL.B   @0,     >1400
        MOV.I   }-1,    >-1
        SPL.B   #0,     >700
        SPL.B   imp+5334,       >700
        SPL.B   imp+2667,       >700
imp     MOV.I   #2667,  *0

end
