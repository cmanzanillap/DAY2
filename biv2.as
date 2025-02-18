!W 10000 !CYCLE !RENAME !ARG 1 2 3 4 5 6 7 8  // !DOPART $1
Title: biv_rep
 ID            !P
 herd          !A 
 HYS           !I 41
 parity		   !I 3
 ACC
 lact_week     60
 avgCH4
 speaks
 npeaks
 avgCO2
 ratio
 CH4gr
 MeI
 peID          !A 1173
 npeaks100 !=npeaks !*100
 ratio100 !=ratio !*100


ped.ped   !MAKE !CSV !SORT
dat.dat  !SKIP !MAXIT 2000 !AISING !continue !TOLERANCE !MVINCLUDE 

### BIVARIATE REPEATABILITY  ###

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

!PART 2
avgCH4 npeaks ~ Trait Trait.HYS Trait.lact_week Trait.parity.ACC !r us(Trait !GP).nrm(ID) us(Trait !GP).peID
residual units.us(Trait !GP)  

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

!PART 3
avgCH4 avgCO2 ~ Trait Trait.HYS Trait.lact_week Trait.parity.ACC !r us(Trait !GP).nrm(ID) us(Trait !GP).peID
residual units.us(Trait !GP)  

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

!PART 4
avgCH4 ratio ~ Trait Trait.HYS Trait.lact_week Trait.parity.ACC !r us(Trait !GP).nrm(ID) us(Trait !GP).peID
residual units.us(Trait !GP)  

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

!PART 5
avgCH4 CH4gr ~ Trait Trait.HYS Trait.lact_week Trait.parity.ACC !r us(Trait !GP).nrm(ID) us(Trait !GP).peID
residual units.us(Trait !GP)  

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

!PART 6
avgCH4 MeI ~ Trait Trait.HYS Trait.lact_week Trait.parity.ACC !r us(Trait !GP).nrm(ID) us(Trait !GP).peID
residual units.us(Trait !GP)  

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

!PART 7
avgCH4 npeaks100 ~ Trait Trait.HYS Trait.lact_week Trait.parity.ACC !r us(Trait !GP).nrm(ID) us(Trait !GP).peID
residual units.us(Trait !GP)  

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

!PART 8
avgCH4 ratio100 ~ Trait Trait.HYS Trait.lact_week Trait.parity.ACC !r us(Trait !GP).nrm(ID) us(Trait !GP).peID
residual units.us(Trait !GP)  

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