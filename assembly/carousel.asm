                            * = $A000
A000   09 A0                ORA #$A0
A002   09 A0                ORA #$A0
A004   41 30                EOR ($30,X)
A006   C3                   
A007   C2                   
A008   CD                             
A009   A9 0F                LDA #$0F
A00B   8D 13 91             STA $9113
A00E   A9 1F                LDA #$1F
A010   8D 12 91             STA $9112
A013   A9 00                LDA #$00
A015   8D 10 91             STA $9110
A018   8D 1E 91             STA $911E
A01B   8D BC 02             STA $02BC
A01E   8D 00 40             STA $4000
A021   8D D0 02             STA $02D0
A024   8D 14 91             STA $9114
A027   A9 C0                LDA #$C0
A029   8D 1C 91             STA $911C
A02C   20 C7 A2             JSR LA2C7
A02F   A9 11                LDA #$11
A031   8D 10 91             STA $9110
A034   A9 80                LDA #$80
A036   2C 10 91   LA036     BIT $9110
A039   F0 FB                BEQ LA036
A03B   A9 00      LA03B     LDA #$00
A03D   8D 10 91             STA $9110
A040   EA                   NOP
A041   EA                   NOP
A042   85 FC                STA $FC
A044   85 FD                STA $FD
A046   85 FE                STA $FE
A048   A9 00      LA048     LDA #$00
A04A   85 FF                STA $FF
A04C   A9 0E                LDA #$0E
A04E   8D 11 91             STA $9111
A051   A9 F0                LDA #$F0
A053   2D 11 91             AND $9111
A056   C9 F0                CMP #$F0
A058   30 3D                BMI LA097
A05A   A9 08                LDA #$08
A05C   85 FF                STA $FF
A05E   A9 0D                LDA #$0D
A060   8D 11 91             STA $9111
A063   A9 F0                LDA #$F0
A065   2D 11 91             AND $9111
A068   C9 F0                CMP #$F0
A06A   30 2B                BMI LA097
A06C   A9 10                LDA #$10
A06E   85 FF                STA $FF
A070   A9 0B                LDA #$0B
A072   8D 11 91             STA $9111
A075   A9 F0                LDA #$F0
A077   2D 11 91             AND $9111
A07A   C9 F0                CMP #$F0
A07C   30 19                BMI LA097
A07E   A9 18                LDA #$18
A080   85 FF                STA $FF
A082   A9 07                LDA #$07
A084   8D 11 91             STA $9111
A087   A9 F0                LDA #$F0
A089   2D 11 91             AND $9111
A08C   C9 F0                CMP #$F0
A08E   30 07                BMI LA097
A090   A0 00                LDY #$00
A092   84 FB                STY $FB
A094   4C 48 A0   LA094     JMP LA048
A097   A0 01      LA097     LDY #$01
A099   C4 FB                CPY $FB
A09B   F0 F7                BEQ LA094
A09D   84 FB                STY $FB
A09F   4A                   LSR A
A0A0   4A                   LSR A
A0A1   4A                   LSR A
A0A2   4A                   LSR A
A0A3   49 0F                EOR #$0F
A0A5   18                   CLC
A0A6   65 FF                ADC $FF
A0A8   AA                   TAX
A0A9   BD D0 A2             LDA $A2D0,X
A0AC   C9 0A                CMP #$0A
A0AE   F0 27                BEQ LA0D7
A0B0   C9 0B                CMP #$0B
A0B2   F0 23                BEQ LA0D7
A0B4   C9 0C                CMP #$0C
A0B6   F0 25                BEQ LA0DD
A0B8   C9 0D                CMP #$0D
A0BA   F0 27                BEQ LA0E3
A0BC   C9 0E                CMP #$0E
A0BE   F0 29                BEQ LA0E9
A0C0   C9 0F                CMP #$0F
A0C2   F0 2B                BEQ LA0EF
A0C4   E6 FC                INC $FC
A0C6   A6 FC                LDX $FC
A0C8   E0 03                CPX #$03
A0CA   10 05                BPL LA0D1
A0CC   95 FC                STA $FC,X
A0CE   20 E5 A1             JSR LA1E5
A0D1   20 D8 A1   LA0D1     JSR LA1D8
A0D4   4C 48 A0             JMP LA048
A0D7   20 2C A2   LA0D7     JSR LA22C
A0DA   4C 48 A0             JMP LA048
A0DD   20 4C A2   LA0DD     JSR LA24C
A0E0   4C D1 A0             JMP LA0D1
A0E3   20 FE A0   LA0E3     JSR LA0FE
A0E6   4C 3B A0             JMP LA03B
A0E9   20 69 A2   LA0E9     JSR LA269
A0EC   20 3B A0             JSR LA03B
A0EF   20 98 A2   LA0EF     JSR LA298
A0F2   4C 3B A0             JMP LA03B
A0F5   A9 02      LA0F5     LDA #$02
A0F7   85 FC                STA $FC
A0F9   AD BC 02             LDA $02BC
A0FC   60                   RTS
A0FD   00                   BRK
A0FE   A9 00      LA0FE     LDA #$00
A100   A6 FC                LDX $FC
A102   E0 00                CPX #$00
A104   F0 1B                BEQ LA121
A106   E0 01                CPX #$01
A108   F0 1B                BEQ LA125
A10A   E0 03                CPX #$03
A10C   10 0D                BPL LA11B
A10E   A4 FD                LDY $FD
A110   C0 00      LA110     CPY #$00
A112   F0 11                BEQ LA125
A114   18                   CLC
A115   69 0A                ADC #$0A
A117   88                   DEY
A118   4C 10 A1             JMP LA110
A11B   20 01 A2   LA11B     JSR LA201
A11E   20 E5 A1             JSR LA1E5
A121   20 D8 A1   LA121     JSR LA1D8
A124   60                   RTS
A125   18         LA125     CLC
A126   75 FC                ADC $FC,X
A128   C9 51                CMP #$51
A12A   10 EF                BPL LA11B
A12C   8D BD 02             STA $02BD
A12F   38                   SEC
A130   ED BC 02             SBC $02BC
A133   8D C6 02             STA $02C6
A136   C9 00                CMP #$00
A138   F0 E1                BEQ LA11B
A13A   AD BD 02             LDA $02BD
A13D   8D BC 02             STA $02BC
A140   AD C6 02             LDA $02C6
A143   C9 00                CMP #$00
A145   10 38                BPL LA17F
A147   18                   CLC
A148   A9 51                LDA #$51
A14A   6D C6 02             ADC $02C6
A14D   8D C7 02             STA $02C7
A150   18                   CLC
A151   6D C6 02             ADC $02C6
A154   C9 00                CMP #$00
A156   30 16                BMI LA16E
A158   20 C6 A1             JSR LA1C6
A15B   A9 FF                LDA #$FF
A15D   4D C6 02             EOR $02C6
A160   18                   CLC
A161   69 01                ADC #$01
A163   8D 18 91             STA $9118
A166   A9 12                LDA #$12
A168   8D 10 91             STA $9110
A16B   4C B9 A1             JMP LA1B9
A16E   20 C6 A1   LA16E     JSR LA1C6
A171   AD C7 02             LDA $02C7
A174   8D 18 91             STA $9118
A177   A9 11                LDA #$11
A179   8D 10 91             STA $9110
A17C   4C B9 A1             JMP LA1B9
A17F   38         LA17F     SEC
A180   A9 51                LDA #$51
A182   ED C6 02             SBC $02C6
A185   49 FF                EOR #$FF
A187   18                   CLC
A188   69 01                ADC #$01
A18A   8D C7 02             STA $02C7
A18D   18                   CLC
A18E   6D C6 02             ADC $02C6
A191   C9 00                CMP #$00
A193   30 16                BMI LA1AB
A195   20 C6 A1             JSR LA1C6
A198   A9 FF                LDA #$FF
A19A   4D C7 02             EOR $02C7
A19D   18                   CLC
A19E   69 01                ADC #$01
A1A0   8D 18 91             STA $9118
A1A3   A9 12                LDA #$12
A1A5   8D 10 91             STA $9110
A1A8   4C B9 A1             JMP LA1B9
A1AB   20 C6 A1   LA1AB     JSR LA1C6
A1AE   AD C6 02             LDA $02C6
A1B1   8D 18 91             STA $9118
A1B4   A9 11                LDA #$11
A1B6   8D 10 91             STA $9110
A1B9   A9 00      LA1B9     LDA #$00
A1BB   8D 19 91             STA $9119
A1BE   A9 20                LDA #$20
A1C0   2C 1D 91   LA1C0     BIT $911D
A1C3   F0 FB                BEQ LA1C0
A1C5   60                   RTS
A1C6   A9 10      LA1C6     LDA #$10
A1C8   8D 10 91             STA $9110
A1CB   A8                   TAY
A1CC   C0 00      LA1CC     CPY #$00
A1CE   F0 07                BEQ LA1D7
A1D0   20 D8 A1             JSR LA1D8
A1D3   88                   DEY
A1D4   4C CC A1             JMP LA1CC
A1D7   60         LA1D7     RTS
A1D8   A9 FF      LA1D8     LDA #$FF
A1DA   8D 15 91             STA $9115
A1DD   A9 40                LDA #$40
A1DF   2C 1D 91   LA1DF     BIT $911D
A1E2   F0 FB                BEQ LA1DF
A1E4   60                   RTS
A1E5   A9 00      LA1E5     LDA #$00
A1E7   A6 FC                LDX $FC
A1E9   E0 01                CPX #$01
A1EB   F0 0D                BEQ LA1FA
A1ED   A0 04                LDY #$04
A1EF   A5 FD                LDA $FD
A1F1   C0 00      LA1F1     CPY #$00
A1F3   F0 05                BEQ LA1FA
A1F5   0A                   ASL A
A1F6   88                   DEY
A1F7   4C F1 A1             JMP LA1F1
A1FA   18         LA1FA     CLC
A1FB   75 FC                ADC $FC,X
A1FD   8D 00 40             STA $4000
A200   60                   RTS
A201   20 F5 A0   LA201     JSR LA0F5
A204   A0 00                LDY #$00
A206   38                   SEC
A207   E9 0A      LA207     SBC #$0A
A209   C9 00                CMP #$00
A20B   30 04                BMI LA211
A20D   C8                   INY
A20E   4C 07 A2             JMP LA207
A211   84 FD      LA211     STY $FD
A213   A9 00                LDA #$00
A215   C0 00      LA215     CPY #$00
A217   F0 07                BEQ LA220
A219   18                   CLC
A21A   69 0A                ADC #$0A
A21C   88                   DEY
A21D   4C 15 A2             JMP LA215
A220   49 FF      LA220     EOR #$FF
A222   18                   CLC
A223   69 01                ADC #$01
A225   18                   CLC
A226   6D BC 02             ADC $02BC
A229   85 FE                STA $FE
A22B   60                   RTS
A22C   C9 0B      LA22C     CMP #$0B
A22E   F0 17                BEQ LA247
A230   A9 04                LDA #$04
A232   8D 10 91   LA232     STA $9110
A235   20 D8 A1             JSR LA1D8
A238   20 D8 A1             JSR LA1D8
A23B   20 D8 A1             JSR LA1D8
A23E   20 D8 A1             JSR LA1D8
A241   A9 00                LDA #$00
A243   8D 10 91             STA $9110
A246   60                   RTS
A247   A9 08      LA247     LDA #$08
A249   4C 32 A2             JMP LA232
A24C   AD D0 02   LA24C     LDA $02D0
A24F   C9 01                CMP #$01
A251   F0 0B                BEQ LA25E
A253   A9 E0                LDA #$E0
A255   8D 1C 91             STA $911C
A258   A9 01                LDA #$01
A25A   8D D0 02             STA $02D0
A25D   60                   RTS
A25E   A9 C0      LA25E     LDA #$C0
A260   8D 1C 91             STA $911C
A263   A9 00                LDA #$00
A265   8D D0 02             STA $02D0
A268   60                   RTS
A269   A9 01      LA269     LDA #$01
A26B   18                   CLC
A26C   6D BC 02             ADC $02BC
A26F   C9 51                CMP #$51
A271   D0 02                BNE LA275
A273   A9 00                LDA #$00
A275   8D BC 02   LA275     STA $02BC
A278   20 01 A2             JSR LA201
A27B   20 E5 A1             JSR LA1E5
A27E   20 C6 A1             JSR LA1C6
A281   A9 01                LDA #$01
A283   8D 18 91             STA $9118
A286   A9 11                LDA #$11
A288   8D 10 91             STA $9110
A28B   A9 00                LDA #$00
A28D   8D 19 91             STA $9119
A290   A9 20                LDA #$20
A292   2C 1D 91   LA292     BIT $911D
A295   F0 FB                BEQ LA292
A297   60                   RTS
A298   AD BC 02   LA298     LDA $02BC
A29B   38                   SEC
A29C   E9 01                SBC #$01
A29E   C9 00                CMP #$00
A2A0   10 02                BPL LA2A4
A2A2   A9 50                LDA #$50
A2A4   8D BC 02   LA2A4     STA $02BC
A2A7   20 01 A2             JSR LA201
A2AA   20 E5 A1             JSR LA1E5
A2AD   20 C6 A1             JSR LA1C6
A2B0   A9 01                LDA #$01
A2B2   8D 18 91             STA $9118
A2B5   A9 12                LDA #$12
A2B7   8D 10 91             STA $9110
A2BA   A9 00                LDA #$00
A2BC   8D 19 91             STA $9119
A2BF   A9 20                LDA #$20
A2C1   2C 1D 91   LA2C1     BIT $911D
A2C4   F0 FB                BEQ LA2C1
A2C6   60                   RTS
A2C7   A9 20      LA2C7     LDA #$20
A2C9   8D 1B 91             STA $911B
A2CC   20 C6 A1             JSR LA1C6
A2CF   60                   RTS
A2D0   FF 
A2D1   01 
A2D2   02
A2D3   FF
A2D4   03
A2D5   FF
A2D6   FF
A2D7   FF
A2D8   0A
A2D9   04
A2DA   05
A2DB   FF
A2DC   06
A2DD   FF
A2DE   FF
A2DF   FF
A2E0   0B
A2E1   07
A2E2   08
A2E3   FF
A2E4   09
A2E5   FF
A2E6   FF
A2E7   FF
A2E8   0C
A2E9   0F
A2EA   00
A2EB   FF
A2EC   0E
A2ED   FF
A2EE   FF
A2EF   FF
A2F0   0D
                            .END

;auto-generated symbols and labels
 LA2C7      $A2C7
 LA036      $A036
 LA097      $A097
 LA048      $A048
 LA094      $A094
 LA0D7      $A0D7
 LA0DD      $A0DD
 LA0E3      $A0E3
 LA0E9      $A0E9
 LA0EF      $A0EF
 LA0D1      $A0D1
 LA1E5      $A1E5
 LA1D8      $A1D8
 LA22C      $A22C
 LA24C      $A24C
 LA0FE      $A0FE
 LA03B      $A03B
 LA269      $A269
 LA298      $A298
 LA121      $A121
 LA125      $A125
 LA11B      $A11B
 LA110      $A110
 LA201      $A201
 LA17F      $A17F
 LA16E      $A16E
 LA1C6      $A1C6
 LA1B9      $A1B9
 LA1AB      $A1AB
 LA1C0      $A1C0
 LA1D7      $A1D7
 LA1CC      $A1CC
 LA1DF      $A1DF
 LA1FA      $A1FA
 LA1F1      $A1F1
 LA0F5      $A0F5
 LA211      $A211
 LA207      $A207
 LA220      $A220
 LA215      $A215
 LA247      $A247
 LA232      $A232
 LA25E      $A25E
 LA275      $A275
 LA292      $A292
 LA2A4      $A2A4
 LA2C1      $A2C1