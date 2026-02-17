! closure for ALTERTAX simulation
exogenous
    poph 
    qoh_s
    pfactwld
    psaveslack profitslack incomeslack endwslack cgdslack
    tradslack
    gincomeslack hincomeslack 
    ams atm atf ats atd
    aosec aoreg avasec avareg
    afcom afsec afreg afecom afesec afereg
    aoall afall afeall
    dppriv dpgov dpgsave dphsave dphsave_all
    to tp tm tms tx txs tpdh tpmh toh
    emplh empl
    sremoh sremih remavo
    sfyoh sfyih fyavo
    saidout saidin aidavo
    realTRNH realTRNG 
    s_sub;


Rest endogenous;
!    DTBALR exogenous for all regions except one,
!    and CGDSLACK exogenous for that one region (which can be any one)

Swap DTBALR(REGBUTONE) = CGDSLACK(REGBUTONE);
