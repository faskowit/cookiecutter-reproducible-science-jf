%% PROJECT CONFIG

[a,b] = fileparts(pwd) ; 
PROJ_DIR = a ; % put base path to project here
cd(PROJ_DIR)
clear a b

%% add to the path

projPathDirs = {
    'src'
    'data'
    'bin'
} ;

for idx=1:length(projPathDirs)
    addpath(genpath(strcat(PROJ_DIR,'/',projPathDirs{idx})))
end

clear projPathDirs

%% setup global vars

OUTSTR = 'sch200' ;

%% make output directory vars

DATADIR = strcat(PROJ_DIR , '/data/') ;
DD.INTERM = strcat(DATADIR, '/interim/' ) ;
DD.PROC = strcat(DATADIR, '/processed/' ) ;
DD.RAW = strcat(DATADIR, '/raw/' ) ;