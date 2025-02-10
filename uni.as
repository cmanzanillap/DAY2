!W 10000 !CYCLE !RENAME !ARG 1 2 3 4 5 6 7 8  // !DOPART $1
Title: test_course
 ID            !P
 herd          !A 
 HYS           !I 155
 parity		   !I 3
 ACC
 lact_week
 avgCH4
 speaks
 npeaks
 avgCO2
 ratio
 CH4gr
 MeI
 npeaks100 !=std_npeaks !*100
 peID          !A 1200

ped.ped   !MAKE !CSV !SORT
dat.dat  !SKIP !MAXIT 2000 !AISING !continue !TOLERANCE !MVINCLUDE 

### UNIVARIATE NETHERLANDS ###

!PART 1

avgCH4 ~ mu HYS lact_week ACC.parity  !r nrm(ID) peID

VPREDICT !DEFINE
P Var_P       1 2 3        # 4
H h2          2 4
H c2          1 4

!PART 2

speaks ~ mu HYS lact_week ACC.parity  !r nrm(ID) peID

VPREDICT !DEFINE
P Var_P       1 2 3        # 4
H h2          2 4
H c2          1 4

!PART 3

npeaks ~ mu HYS lact_week ACC.parity  !r nrm(ID) peID

VPREDICT !DEFINE
P Var_P       1 2 3        # 4
H h2          2 4
H c2          1 4

!PART 4

avgCO2 ~ mu HYS lact_week ACC.parity !r nrm(ID) peID

VPREDICT !DEFINE
P Var_P       1 2 3        # 4
H h2          2 4
H c2          1 4

!PART 5

ratio ~ mu HYS lact_week ACC.parity !r nrm(ID) peID

VPREDICT !DEFINE
P Var_P       1 2 3        # 4
H h2          2 4
H c2          1 4

!PART 6

CH4gr ~ mu HYS lact_week ACC.parity !r nrm(ID) peID

VPREDICT !DEFINE
P Var_P       1 2 3        # 4
H h2          2 4
H c2          1 4

!PART 7

MeI ~ mu HYS lact_week ACC.parity  !r nrm(ID) peID

VPREDICT !DEFINE
P Var_P       1 2 3        # 4
H h2          2 4
H c2          1 4

!PART 8

npeaks100 ~ mu HYS lact_week ACC.parity  !r nrm(ID) peID

VPREDICT !DEFINE
P Var_P       1 2 3        # 4
H h2          2 4
H c2          1 4
