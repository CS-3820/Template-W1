module Data where

data PSBuiltin = PSdup
               | PSpop
               | PSexch
               | PSadd
               | PSsub
               | PSmul
               | PSdiv
               | PSidiv
               | PSmod
               | PSabs
               | PSneg
               | PSceiling
               | PSfloor
               | PSround
               | PStruncate
               | PSsqrt
               | PSexp
               | PSln
               | PSlog
               | PSsin
               | PScos
               | PSatan
               | PSdef
               | PSeq
               | PSne
               | PSgt
               | PSge
               | PSlt
               | PSle
               | PSand
               | PSor
               | PSxor
               | PStrue
               | PSfalse
               | PSnot
               | PSif
               | PSifelse
               | PSfor
               | PSrepeat
               --- Graphics ---
               | PSfill
               | PSstroke
               | PSgsave
               | PSgrestore
               | PStranslate
               | PSrotate
               | PSscale
               | PSnewpath
               | PSmoveto
               | PSlineto
               | PScurveto
               | PSarc
               | PSclosepath
               | PSsetlinewidth
               | PScurrentlinewidth
               | PSsetrgbcolor
               | PSsetdash
  deriving (Eq, Ord, Show)

data PSExpr = PSInt Int | PSReal Double | PSBoolean Bool -- | PSString String
            | PSArray [PSExpr] | PSProcedure [PSExpr]
            | PSLiteralName String | PSExecutableName String
            | PSOp PSBuiltin
  deriving (Eq, Ord, Show)

type Dictionary = [(String, PSExpr)]

sysdict :: Dictionary
sysdict = map (\(name, op) -> (name, PSOp op)) [
    ("dup", PSdup),
    ("pop", PSpop),
    ("exch", PSexch),
    ("add", PSadd),
    ("sub", PSsub),
    ("mul", PSmul),
    ("div", PSdiv),
    ("idiv", PSidiv),
    ("mod", PSmod),
    ("abs", PSabs),
    ("neg", PSneg),
    ("ceiling", PSceiling),
    ("floor", PSfloor),
    ("round", PSround),
    ("truncate", PStruncate),
    ("sqrt", PSsqrt),
    ("exp", PSexp),
    ("ln", PSln),
    ("log", PSlog),
    ("sin", PSsin),
    ("cos", PScos),
    ("atan", PSatan),
    ("def", PSdef),
    ("eq", PSeq),
    ("ne", PSne),
    ("gt", PSgt),
    ("ge", PSge),
    ("lt", PSlt),
    ("le", PSle),
    ("and", PSand),
    ("or", PSor),
    ("xor", PSxor),
    ("true", PStrue),
    ("false", PSfalse),
    ("not", PSnot),
    ("if", PSif),
    ("ifelse", PSifelse),
    ("for", PSfor),
    ("repeat", PSrepeat),
    ("fill", PSfill),
    ("stroke", PSstroke),
    ("gsave", PSgsave),
    ("grestore", PSgrestore),
    ("translate", PStranslate),
    ("rotate", PSrotate),
    ("scale", PSscale),
    ("newpath", PSnewpath),
    ("moveto", PSmoveto),
    ("lineto", PSlineto),
    ("curveto", PScurveto),
    ("arc", PSarc),
    ("closepath", PSclosepath),
    ("setlinewidth", PSsetlinewidth),
    ("currentlinewidth", PScurrentlinewidth),
    ("setrgbcolor", PSsetrgbcolor),
    ("setdash", PSsetdash)
  ]

data State = undefined
