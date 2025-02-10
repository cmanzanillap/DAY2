!W 10000 !CYCLE !RENAME !ARG 1   // !DOPART $1
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
avgCH4 speaks ~ Trait Trait.HYS Trait.lact_week Trait.parity.ACC !r us(Trait !GP 4454 2621 65830).nrm(ID) us(Trait !GP 6705 5000 43176).peID
residual units.us(Trait !GP 12489 11616 87056)  

VPREDICT !DEFINE
P Var_P1       1 4 7           # 10
P Cov_P               2 5 8            #11
P Var_P2   3 6 9       # 12
H h2_1         7 10 
H h2_2      9 12 
H c2_1         1 10 
H c2_2      3 12
R cor_G               7 8 9
R cor_P               10 11 12 
