# NorESM
# import the module
module load CDO/2.1.1-gompi-2021a

# daily variables
mkdir QRUNOFF
mkdir QVEGT
mkdir Qle


# select variables
for file in *clm2.h1*
do
	
	cdo selname,QRUNOFF $file QRUNOFF/$file"_QRUNOFF"
	cdo selname,QVEGT $file QVEGT/$file"_QVEGT"
	cdo selname,Qle $file Qle/$file"_Qle"
	
done

# daily variables (DON'T FORGET to replace IRR.001 by other exp)
do





cd ../QRUNOFF
for file in *
do
	cdo yearmean $file $file"_yearmean"
done
cdo mergetime *190[1-9]*yearmean *1910*yearmean NorESM.IRR.001.clm.h0.1901_1910.nc_QRUNOFF_yearmean
cdo mergetime *191[1-9]*yearmean *1920*yearmean NorESM.IRR.001.clm.h0.1911_1920.nc_QRUNOFF_yearmean
cdo mergetime *192[1-9]*yearmean *1930*yearmean NorESM.IRR.001.clm.h0.1921_1930.nc_QRUNOFF_yearmean
cdo mergetime *193[1-9]*yearmean *1940*yearmean NorESM.IRR.001.clm.h0.1931_1940.nc_QRUNOFF_yearmean
cdo mergetime *194[1-9]*yearmean *1950*yearmean NorESM.IRR.001.clm.h0.1941_1950.nc_QRUNOFF_yearmean
cdo mergetime *195[1-9]*yearmean *1960*yearmean NorESM.IRR.001.clm.h0.1951_1960.nc_QRUNOFF_yearmean
cdo mergetime *196[1-9]*yearmean *1970*yearmean NorESM.IRR.001.clm.h0.1961_1970.nc_QRUNOFF_yearmean
cdo mergetime *197[1-9]*yearmean *1980*yearmean NorESM.IRR.001.clm.h0.1971_1980.nc_QRUNOFF_yearmean
cdo mergetime *198[1-4]*yearmean NorESM.IRR.001.clm.h0.1981_1984.nc_QRUNOFF_yearmean
cdo mergetime *198[5-9]*yearmean *199[0-4]*yearmean NorESM.IRR.001.clm.h0.1985_1994.nc_QRUNOFF_yearmean
cdo mergetime *199[5-9]*yearmean *200[0-4]*yearmean NorESM.IRR.001.clm.h0.1995_2004.nc_QRUNOFF_yearmean
cdo mergetime *200[5-9]*yearmean *201[0-4]*yearmean NorESM.IRR.001.clm.h0.2005_2014.nc_QRUNOFF_yearmean

cd ../QVEGT
for file in *
do
	cdo yearmean $file $file"_yearmean"
done
cdo mergetime *190[1-9]*yearmean *1910*yearmean NorESM.IRR.001.clm.h0.1901_1910.nc_QVEGT_yearmean
cdo mergetime *191[1-9]*yearmean *1920*yearmean NorESM.IRR.001.clm.h0.1911_1920.nc_QVEGT_yearmean
cdo mergetime *192[1-9]*yearmean *1930*yearmean NorESM.IRR.001.clm.h0.1921_1930.nc_QVEGT_yearmean
cdo mergetime *193[1-9]*yearmean *1940*yearmean NorESM.IRR.001.clm.h0.1931_1940.nc_QVEGT_yearmean
cdo mergetime *194[1-9]*yearmean *1950*yearmean NorESM.IRR.001.clm.h0.1941_1950.nc_QVEGT_yearmean
cdo mergetime *195[1-9]*yearmean *1960*yearmean NorESM.IRR.001.clm.h0.1951_1960.nc_QVEGT_yearmean
cdo mergetime *196[1-9]*yearmean *1970*yearmean NorESM.IRR.001.clm.h0.1961_1970.nc_QVEGT_yearmean
cdo mergetime *197[1-9]*yearmean *1980*yearmean NorESM.IRR.001.clm.h0.1971_1980.nc_QVEGT_yearmean
cdo mergetime *198[1-4]*yearmean NorESM.IRR.001.clm.h0.1981_1984.nc_QVEGT_yearmean
cdo mergetime *198[5-9]*yearmean *199[0-4]*yearmean NorESM.IRR.001.clm.h0.1985_1994.nc_QVEGT_yearmean
cdo mergetime *199[5-9]*yearmean *200[0-4]*yearmean NorESM.IRR.001.clm.h0.1995_2004.nc_QVEGT_yearmean
cdo mergetime *200[5-9]*yearmean *201[0-4]*yearmean NorESM.IRR.001.clm.h0.2005_2014.nc_QVEGT_yearmean

cd ../Qle
for file in *
do
	cdo yearmean $file $file"_yearmean"
done
cdo mergetime *190[1-9]*yearmean *1910*yearmean NorESM.IRR.001.clm.h0.1901_1910.nc_Qle_yearmean
cdo mergetime *191[1-9]*yearmean *1920*yearmean NorESM.IRR.001.clm.h0.1911_1920.nc_Qle_yearmean
cdo mergetime *192[1-9]*yearmean *1930*yearmean NorESM.IRR.001.clm.h0.1921_1930.nc_Qle_yearmean
cdo mergetime *193[1-9]*yearmean *1940*yearmean NorESM.IRR.001.clm.h0.1931_1940.nc_Qle_yearmean
cdo mergetime *194[1-9]*yearmean *1950*yearmean NorESM.IRR.001.clm.h0.1941_1950.nc_Qle_yearmean
cdo mergetime *195[1-9]*yearmean *1960*yearmean NorESM.IRR.001.clm.h0.1951_1960.nc_Qle_yearmean
cdo mergetime *196[1-9]*yearmean *1970*yearmean NorESM.IRR.001.clm.h0.1961_1970.nc_Qle_yearmean
cdo mergetime *197[1-9]*yearmean *1980*yearmean NorESM.IRR.001.clm.h0.1971_1980.nc_Qle_yearmean
cdo mergetime *198[1-4]*yearmean NorESM.IRR.001.clm.h0.1981_1984.nc_Qle_yearmean
cdo mergetime *198[5-9]*yearmean *199[0-4]*yearmean NorESM.IRR.001.clm.h0.1985_1994.nc_Qle_yearmean
cdo mergetime *199[5-9]*yearmean *200[0-4]*yearmean NorESM.IRR.001.clm.h0.1995_2004.nc_Qle_yearmean
cdo mergetime *200[5-9]*yearmean *201[0-4]*yearmean NorESM.IRR.001.clm.h0.2005_2014.nc_Qle_yearmean



# post-process of QIRRIG for plotting PHASE 1
for exp in {IRR01, NOI03}	# this is just for us to close the long code
do
	
	
	cdo mergetime NorESM.IRR.001*1901_1910*_QRUNOFF_yearmean NorESM.IRR.001*1911_1920*_QRUNOFF_yearmean NorESM.IRR.001*1921_1930*_QRUNOFF_yearmean NorESM_IRR01_QRUNOFF_1901_1930.nc
	cdo mergetime NorESM.IRR.001*1985_1994*_QRUNOFF_yearmean NorESM.IRR.001*1995_2004*_QRUNOFF_yearmean NorESM.IRR.001*2005_2014*_QRUNOFF_yearmean NorESM_IRR01_QRUNOFF_1985_2014.nc
	cdo mergetime NorESM.IRR.001.clm.h0.*_QRUNOFF_yearmean NorESM_IRR01_QRUNOFF_1901_2014.nc
	
	cdo mergetime NorESM.IRR.002*1901_1910*_QRUNOFF_yearmean NorESM.IRR.002*1911_1920*_QRUNOFF_yearmean NorESM.IRR.002*1921_1930*_QRUNOFF_yearmean NorESM_IRR02_QRUNOFF_1901_1930.nc
	cdo mergetime NorESM.IRR.002*1985_1994*_QRUNOFF_yearmean NorESM.IRR.002*1995_2004*_QRUNOFF_yearmean NorESM.IRR.002*2005_2014*_QRUNOFF_yearmean NorESM_IRR02_QRUNOFF_1985_2014.nc
	cdo mergetime NorESM.IRR.002.clm.h0.*_QRUNOFF_yearmean NorESM_IRR02_QRUNOFF_1901_2014.nc
	
	cdo mergetime NorESM.IRR.003*1901_1910*_QRUNOFF_yearmean NorESM.IRR.003*1911_1920*_QRUNOFF_yearmean NorESM.IRR.003*1921_1930*_QRUNOFF_yearmean NorESM_IRR03_QRUNOFF_1901_1930.nc
	cdo mergetime NorESM.IRR.003*1985_1994*_QRUNOFF_yearmean NorESM.IRR.003*1995_2004*_QRUNOFF_yearmean NorESM.IRR.003*2005_2014*_QRUNOFF_yearmean NorESM_IRR03_QRUNOFF_1985_2014.nc
	cdo mergetime NorESM.IRR.003.clm.h0.*_QRUNOFF_yearmean NorESM_IRR03_QRUNOFF_1901_2014.nc
	
	cdo mergetime NorESM.NOI.001*1901_1910*_QRUNOFF_yearmean NorESM.NOI.001*1911_1920*_QRUNOFF_yearmean NorESM.NOI.001*1921_1930*_QRUNOFF_yearmean NorESM_NOI01_QRUNOFF_1901_1930.nc
	cdo mergetime NorESM.NOI.001*1985_1994*_QRUNOFF_yearmean NorESM.NOI.001*1995_2004*_QRUNOFF_yearmean NorESM.NOI.001*2005_2014*_QRUNOFF_yearmean NorESM_NOI01_QRUNOFF_1985_2014.nc
	cdo mergetime NorESM.NOI.001.clm.h0.* NorESM_NOI01_QRUNOFF_1901_2014.nc
	
	cdo mergetime NorESM.NOI.002*1901_1910*_QRUNOFF_yearmean NorESM.NOI.002*1911_1920*_QRUNOFF_yearmean NorESM.NOI.002*1921_1930*_QRUNOFF_yearmean NorESM_NOI02_QRUNOFF_1901_1930.nc
	cdo mergetime NorESM.NOI.002*1985_1994*_QRUNOFF_yearmean NorESM.NOI.002*1995_2004*_QRUNOFF_yearmean NorESM.NOI.002*2005_2014*_QRUNOFF_yearmean NorESM_NOI02_QRUNOFF_1985_2014.nc
	cdo mergetime NorESM.NOI.002.clm.h0.*_QRUNOFF_yearmean NorESM_NOI02_QRUNOFF_1901_2014.nc
	
	cdo mergetime NorESM.NOI.003*1901_1910*_QRUNOFF_yearmean NorESM.NOI.003*1911_1920*_QRUNOFF_yearmean NorESM.NOI.003*1921_1930*_QRUNOFF_yearmean NorESM_NOI03_QRUNOFF_1901_1930.nc
	cdo mergetime NorESM.NOI.003*1985_1994*_QRUNOFF_yearmean NorESM.NOI.003*1995_2004*_QRUNOFF_yearmean NorESM.NOI.003*2005_2014*_QRUNOFF_yearmean NorESM_NOI03_QRUNOFF_1985_2014.nc
	cdo mergetime NorESM.NOI.003.clm.h0.*_QRUNOFF_yearmean NorESM_NOI03_QRUNOFF_1901_2014.nc
	
	
	
	cdo mergetime NorESM.IRR.001*1901_1910*_QVEGT_yearmean NorESM.IRR.001*1911_1920*_QVEGT_yearmean NorESM.IRR.001*1921_1930*_QVEGT_yearmean NorESM_IRR01_QVEGT_1901_1930.nc
	cdo mergetime NorESM.IRR.001*1985_1994*_QVEGT_yearmean NorESM.IRR.001*1995_2004*_QVEGT_yearmean NorESM.IRR.001*2005_2014*_QVEGT_yearmean NorESM_IRR01_QVEGT_1985_2014.nc
	cdo mergetime NorESM.IRR.001.clm.h0.*_QVEGT_yearmean NorESM_IRR01_QVEGT_1901_2014.nc
	
	cdo mergetime NorESM.IRR.002*1901_1910*_QVEGT_yearmean NorESM.IRR.002*1911_1920*_QVEGT_yearmean NorESM.IRR.002*1921_1930*_QVEGT_yearmean NorESM_IRR02_QVEGT_1901_1930.nc
	cdo mergetime NorESM.IRR.002*1985_1994*_QVEGT_yearmean NorESM.IRR.002*1995_2004*_QVEGT_yearmean NorESM.IRR.002*2005_2014*_QVEGT_yearmean NorESM_IRR02_QVEGT_1985_2014.nc
	cdo mergetime NorESM.IRR.002.clm.h0.*_QVEGT_yearmean NorESM_IRR02_QVEGT_1901_2014.nc
	
	cdo mergetime NorESM.IRR.003*1901_1910*_QVEGT_yearmean NorESM.IRR.003*1911_1920*_QVEGT_yearmean NorESM.IRR.003*1921_1930*_QVEGT_yearmean NorESM_IRR03_QVEGT_1901_1930.nc
	cdo mergetime NorESM.IRR.003*1985_1994*_QVEGT_yearmean NorESM.IRR.003*1995_2004*_QVEGT_yearmean NorESM.IRR.003*2005_2014*_QVEGT_yearmean NorESM_IRR03_QVEGT_1985_2014.nc
	cdo mergetime NorESM.IRR.003.clm.h0.*_QVEGT_yearmean NorESM_IRR03_QVEGT_1901_2014.nc
	
	cdo mergetime NorESM.NOI.001*1901_1910*_QVEGT_yearmean NorESM.NOI.001*1911_1920*_QVEGT_yearmean NorESM.NOI.001*1921_1930*_QVEGT_yearmean NorESM_NOI01_QVEGT_1901_1930.nc
	cdo mergetime NorESM.NOI.001*1985_1994*_QVEGT_yearmean NorESM.NOI.001*1995_2004*_QVEGT_yearmean NorESM.NOI.001*2005_2014*_QVEGT_yearmean NorESM_NOI01_QVEGT_1985_2014.nc
	cdo mergetime NorESM.NOI.001.clm.h0.* NorESM_NOI01_QVEGT_1901_2014.nc
	
	cdo mergetime NorESM.NOI.002*1901_1910*_QVEGT_yearmean NorESM.NOI.002*1911_1920*_QVEGT_yearmean NorESM.NOI.002*1921_1930*_QVEGT_yearmean NorESM_NOI02_QVEGT_1901_1930.nc
	cdo mergetime NorESM.NOI.002*1985_1994*_QVEGT_yearmean NorESM.NOI.002*1995_2004*_QVEGT_yearmean NorESM.NOI.002*2005_2014*_QVEGT_yearmean NorESM_NOI02_QVEGT_1985_2014.nc
	cdo mergetime NorESM.NOI.002.clm.h0.*_QVEGT_yearmean NorESM_NOI02_QVEGT_1901_2014.nc
	
	cdo mergetime NorESM.NOI.003*1901_1910*_QVEGT_yearmean NorESM.NOI.003*1911_1920*_QVEGT_yearmean NorESM.NOI.003*1921_1930*_QVEGT_yearmean NorESM_NOI03_QVEGT_1901_1930.nc
	cdo mergetime NorESM.NOI.003*1985_1994*_QVEGT_yearmean NorESM.NOI.003*1995_2004*_QVEGT_yearmean NorESM.NOI.003*2005_2014*_QVEGT_yearmean NorESM_NOI03_QVEGT_1985_2014.nc
	cdo mergetime NorESM.NOI.003.clm.h0.*_QVEGT_yearmean NorESM_NOI03_QVEGT_1901_2014.nc
	
	
	
	
	cdo mergetime NorESM.IRR.001*1901_1910*_Qle_yearmean NorESM.IRR.001*1911_1920*_Qle_yearmean NorESM.IRR.001*1921_1930*_Qle_yearmean NorESM_IRR01_Qle_1901_1930.nc
	cdo mergetime NorESM.IRR.001*1985_1994*_Qle_yearmean NorESM.IRR.001*1995_2004*_Qle_yearmean NorESM.IRR.001*2005_2014*_Qle_yearmean NorESM_IRR01_Qle_1985_2014.nc
	cdo mergetime NorESM.IRR.001.clm.h0.*_Qle_yearmean NorESM_IRR01_Qle_1901_2014.nc
	
	cdo mergetime NorESM.IRR.002*1901_1910*_Qle_yearmean NorESM.IRR.002*1911_1920*_Qle_yearmean NorESM.IRR.002*1921_1930*_Qle_yearmean NorESM_IRR02_Qle_1901_1930.nc
	cdo mergetime NorESM.IRR.002*1985_1994*_Qle_yearmean NorESM.IRR.002*1995_2004*_Qle_yearmean NorESM.IRR.002*2005_2014*_Qle_yearmean NorESM_IRR02_Qle_1985_2014.nc
	cdo mergetime NorESM.IRR.002.clm.h0.*_Qle_yearmean NorESM_IRR02_Qle_1901_2014.nc
	
	cdo mergetime NorESM.IRR.003*1901_1910*_Qle_yearmean NorESM.IRR.003*1911_1920*_Qle_yearmean NorESM.IRR.003*1921_1930*_Qle_yearmean NorESM_IRR03_Qle_1901_1930.nc
	cdo mergetime NorESM.IRR.003*1985_1994*_Qle_yearmean NorESM.IRR.003*1995_2004*_Qle_yearmean NorESM.IRR.003*2005_2014*_Qle_yearmean NorESM_IRR03_Qle_1985_2014.nc
	cdo mergetime NorESM.IRR.003.clm.h0.*_Qle_yearmean NorESM_IRR03_Qle_1901_2014.nc
	
	cdo mergetime NorESM.NOI.001*1901_1910*_Qle_yearmean NorESM.NOI.001*1911_1920*_Qle_yearmean NorESM.NOI.001*1921_1930*_Qle_yearmean NorESM_NOI01_Qle_1901_1930.nc
	cdo mergetime NorESM.NOI.001*1985_1994*_Qle_yearmean NorESM.NOI.001*1995_2004*_Qle_yearmean NorESM.NOI.001*2005_2014*_Qle_yearmean NorESM_NOI01_Qle_1985_2014.nc
	cdo mergetime NorESM.NOI.001.clm.h0.* NorESM_NOI01_Qle_1901_2014.nc
	
	cdo mergetime NorESM.NOI.002*1901_1910*_Qle_yearmean NorESM.NOI.002*1911_1920*_Qle_yearmean NorESM.NOI.002*1921_1930*_Qle_yearmean NorESM_NOI02_Qle_1901_1930.nc
	cdo mergetime NorESM.NOI.002*1985_1994*_Qle_yearmean NorESM.NOI.002*1995_2004*_Qle_yearmean NorESM.NOI.002*2005_2014*_Qle_yearmean NorESM_NOI02_Qle_1985_2014.nc
	cdo mergetime NorESM.NOI.002.clm.h0.*_Qle_yearmean NorESM_NOI02_Qle_1901_2014.nc
	
	cdo mergetime NorESM.NOI.003*1901_1910*_Qle_yearmean NorESM.NOI.003*1911_1920*_Qle_yearmean NorESM.NOI.003*1921_1930*_Qle_yearmean NorESM_NOI03_Qle_1901_1930.nc
	cdo mergetime NorESM.NOI.003*1985_1994*_Qle_yearmean NorESM.NOI.003*1995_2004*_Qle_yearmean NorESM.NOI.003*2005_2014*_Qle_yearmean NorESM_NOI03_Qle_1985_2014.nc
	cdo mergetime NorESM.NOI.003.clm.h0.*_Qle_yearmean NorESM_NOI03_Qle_1901_2014.nc
	
	
done

# post-process of QIRRIG for plotting PHASE 2
for exp in {IRR01, NOI03}	# this is just for us to close the long code
do
	cdo timmean NorESM_IRR01_QRUNOFF_1901_1930.nc NorESM_IRR01_QRUNOFF_timmean_1901_1930.nc
	cdo timmean NorESM_IRR01_QRUNOFF_1985_2014.nc NorESM_IRR01_QRUNOFF_timmean_1985_2014.nc
	cdo yearmean NorESM_IRR01_QRUNOFF_1901_2014.nc NorESM_IRR01_QRUNOFF_yearmean_1901_2014.nc
	
	cdo timmean NorESM_IRR02_QRUNOFF_1901_1930.nc NorESM_IRR02_QRUNOFF_timmean_1901_1930.nc
	cdo timmean NorESM_IRR02_QRUNOFF_1985_2014.nc NorESM_IRR02_QRUNOFF_timmean_1985_2014.nc
	cdo yearmean NorESM_IRR02_QRUNOFF_1901_2014.nc NorESM_IRR02_QRUNOFF_yearmean_1901_2014.nc
	
	cdo timmean NorESM_IRR03_QRUNOFF_1901_1930.nc NorESM_IRR03_QRUNOFF_timmean_1901_1930.nc
	cdo timmean NorESM_IRR03_QRUNOFF_1985_2014.nc NorESM_IRR03_QRUNOFF_timmean_1985_2014.nc
	cdo yearmean NorESM_IRR03_QRUNOFF_1901_2014.nc NorESM_IRR03_QRUNOFF_yearmean_1901_2014.nc
	
	cdo timmean NorESM_NOI01_QRUNOFF_1901_1930.nc NorESM_NOI01_QRUNOFF_timmean_1901_1930.nc
	cdo timmean NorESM_NOI01_QRUNOFF_1985_2014.nc NorESM_NOI01_QRUNOFF_timmean_1985_2014.nc
	cdo yearmean NorESM_NOI01_QRUNOFF_1901_2014.nc NorESM_NOI01_QRUNOFF_yearmean_1901_2014.nc
	
	cdo timmean NorESM_NOI02_QRUNOFF_1901_1930.nc NorESM_NOI02_QRUNOFF_timmean_1901_1930.nc
	cdo timmean NorESM_NOI02_QRUNOFF_1985_2014.nc NorESM_NOI02_QRUNOFF_timmean_1985_2014.nc
	cdo yearmean NorESM_NOI02_QRUNOFF_1901_2014.nc NorESM_NOI02_QRUNOFF_yearmean_1901_2014.nc
	
	cdo timmean NorESM_NOI03_QRUNOFF_1901_1930.nc NorESM_NOI03_QRUNOFF_timmean_1901_1930.nc
	cdo timmean NorESM_NOI03_QRUNOFF_1985_2014.nc NorESM_NOI03_QRUNOFF_timmean_1985_2014.nc
	cdo yearmean NorESM_NOI03_QRUNOFF_1901_2014.nc NorESM_NOI03_QRUNOFF_yearmean_1901_2014.nc
	
	
	
	cdo timmean NorESM_IRR01_QVEGT_1901_1930.nc NorESM_IRR01_QVEGT_timmean_1901_1930.nc
	cdo timmean NorESM_IRR01_QVEGT_1985_2014.nc NorESM_IRR01_QVEGT_timmean_1985_2014.nc
	cdo yearmean NorESM_IRR01_QVEGT_1901_2014.nc NorESM_IRR01_QVEGT_yearmean_1901_2014.nc
	
	cdo timmean NorESM_IRR02_QVEGT_1901_1930.nc NorESM_IRR02_QVEGT_timmean_1901_1930.nc
	cdo timmean NorESM_IRR02_QVEGT_1985_2014.nc NorESM_IRR02_QVEGT_timmean_1985_2014.nc
	cdo yearmean NorESM_IRR02_QVEGT_1901_2014.nc NorESM_IRR02_QVEGT_yearmean_1901_2014.nc
	
	cdo timmean NorESM_IRR03_QVEGT_1901_1930.nc NorESM_IRR03_QVEGT_timmean_1901_1930.nc
	cdo timmean NorESM_IRR03_QVEGT_1985_2014.nc NorESM_IRR03_QVEGT_timmean_1985_2014.nc
	cdo yearmean NorESM_IRR03_QVEGT_1901_2014.nc NorESM_IRR03_QVEGT_yearmean_1901_2014.nc
	
	cdo timmean NorESM_NOI01_QVEGT_1901_1930.nc NorESM_NOI01_QVEGT_timmean_1901_1930.nc
	cdo timmean NorESM_NOI01_QVEGT_1985_2014.nc NorESM_NOI01_QVEGT_timmean_1985_2014.nc
	cdo yearmean NorESM_NOI01_QVEGT_1901_2014.nc NorESM_NOI01_QVEGT_yearmean_1901_2014.nc
	
	cdo timmean NorESM_NOI02_QVEGT_1901_1930.nc NorESM_NOI02_QVEGT_timmean_1901_1930.nc
	cdo timmean NorESM_NOI02_QVEGT_1985_2014.nc NorESM_NOI02_QVEGT_timmean_1985_2014.nc
	cdo yearmean NorESM_NOI02_QVEGT_1901_2014.nc NorESM_NOI02_QVEGT_yearmean_1901_2014.nc
	
	cdo timmean NorESM_NOI03_QVEGT_1901_1930.nc NorESM_NOI03_QVEGT_timmean_1901_1930.nc
	cdo timmean NorESM_NOI03_QVEGT_1985_2014.nc NorESM_NOI03_QVEGT_timmean_1985_2014.nc
	cdo yearmean NorESM_NOI03_QVEGT_1901_2014.nc NorESM_NOI03_QVEGT_yearmean_1901_2014.nc
	
	
	
	cdo timmean NorESM_IRR01_Qle_1901_1930.nc NorESM_IRR01_Qle_timmean_1901_1930.nc
	cdo timmean NorESM_IRR01_Qle_1985_2014.nc NorESM_IRR01_Qle_timmean_1985_2014.nc
	cdo yearmean NorESM_IRR01_Qle_1901_2014.nc NorESM_IRR01_Qle_yearmean_1901_2014.nc
	
	cdo timmean NorESM_IRR02_Qle_1901_1930.nc NorESM_IRR02_Qle_timmean_1901_1930.nc
	cdo timmean NorESM_IRR02_Qle_1985_2014.nc NorESM_IRR02_Qle_timmean_1985_2014.nc
	cdo yearmean NorESM_IRR02_Qle_1901_2014.nc NorESM_IRR02_Qle_yearmean_1901_2014.nc
	
	cdo timmean NorESM_IRR03_Qle_1901_1930.nc NorESM_IRR03_Qle_timmean_1901_1930.nc
	cdo timmean NorESM_IRR03_Qle_1985_2014.nc NorESM_IRR03_Qle_timmean_1985_2014.nc
	cdo yearmean NorESM_IRR03_Qle_1901_2014.nc NorESM_IRR03_Qle_yearmean_1901_2014.nc
	
	cdo timmean NorESM_NOI01_Qle_1901_1930.nc NorESM_NOI01_Qle_timmean_1901_1930.nc
	cdo timmean NorESM_NOI01_Qle_1985_2014.nc NorESM_NOI01_Qle_timmean_1985_2014.nc
	cdo yearmean NorESM_NOI01_Qle_1901_2014.nc NorESM_NOI01_Qle_yearmean_1901_2014.nc
	
	cdo timmean NorESM_NOI02_Qle_1901_1930.nc NorESM_NOI02_Qle_timmean_1901_1930.nc
	cdo timmean NorESM_NOI02_Qle_1985_2014.nc NorESM_NOI02_Qle_timmean_1985_2014.nc
	cdo yearmean NorESM_NOI02_Qle_1901_2014.nc NorESM_NOI02_Qle_yearmean_1901_2014.nc
	
	cdo timmean NorESM_NOI03_Qle_1901_1930.nc NorESM_NOI03_Qle_timmean_1901_1930.nc
	cdo timmean NorESM_NOI03_Qle_1985_2014.nc NorESM_NOI03_Qle_timmean_1985_2014.nc
	cdo yearmean NorESM_NOI03_Qle_1901_2014.nc NorESM_NOI03_Qle_yearmean_1901_2014.nc
	
	
done


# post-process of QIRRIG for plotting PHASE 4
do



cdo ensmean NorESM_IRR01_QRUNOFF_timmean_1901_1930.nc NorESM_IRR02_QRUNOFF_timmean_1901_1930.nc NorESM_IRR03_QRUNOFF_timmean_1901_1930.nc NorESM_IRR_QRUNOFF_timmean_1901_1930.nc
cdo ensmean NorESM_IRR01_QRUNOFF_timmean_1985_2014.nc NorESM_IRR02_QRUNOFF_timmean_1985_2014.nc NorESM_IRR03_QRUNOFF_timmean_1985_2014.nc NorESM_IRR_QRUNOFF_timmean_1985_2014.nc
cdo ensmean NorESM_IRR01_QRUNOFF_yearmean_1901_2014.nc NorESM_IRR02_QRUNOFF_yearmean_1901_2014.nc NorESM_IRR03_QRUNOFF_yearmean_1901_2014.nc NorESM_IRR_QRUNOFF_yearmean_1901_2014.nc

cdo ensmean NorESM_NOI01_QRUNOFF_timmean_1901_1930.nc NorESM_NOI02_QRUNOFF_timmean_1901_1930.nc NorESM_NOI03_QRUNOFF_timmean_1901_1930.nc NorESM_NOI_QRUNOFF_timmean_1901_1930.nc
cdo ensmean NorESM_NOI01_QRUNOFF_timmean_1985_2014.nc NorESM_NOI02_QRUNOFF_timmean_1985_2014.nc NorESM_NOI03_QRUNOFF_timmean_1985_2014.nc NorESM_NOI_QRUNOFF_timmean_1985_2014.nc
cdo ensmean NorESM_NOI01_QRUNOFF_yearmean_1901_2014.nc NorESM_NOI02_QRUNOFF_yearmean_1901_2014.nc NorESM_NOI03_QRUNOFF_yearmean_1901_2014.nc NorESM_NOI_QRUNOFF_yearmean_1901_2014.nc



cdo ensmean NorESM_IRR01_QVEGT_timmean_1901_1930.nc NorESM_IRR02_QVEGT_timmean_1901_1930.nc NorESM_IRR03_QVEGT_timmean_1901_1930.nc NorESM_IRR_QVEGT_timmean_1901_1930.nc
cdo ensmean NorESM_IRR01_QVEGT_timmean_1985_2014.nc NorESM_IRR02_QVEGT_timmean_1985_2014.nc NorESM_IRR03_QVEGT_timmean_1985_2014.nc NorESM_IRR_QVEGT_timmean_1985_2014.nc
cdo ensmean NorESM_IRR01_QVEGT_yearmean_1901_2014.nc NorESM_IRR02_QVEGT_yearmean_1901_2014.nc NorESM_IRR03_QVEGT_yearmean_1901_2014.nc NorESM_IRR_QVEGT_yearmean_1901_2014.nc

cdo ensmean NorESM_NOI01_QVEGT_timmean_1901_1930.nc NorESM_NOI02_QVEGT_timmean_1901_1930.nc NorESM_NOI03_QVEGT_timmean_1901_1930.nc NorESM_NOI_QVEGT_timmean_1901_1930.nc
cdo ensmean NorESM_NOI01_QVEGT_timmean_1985_2014.nc NorESM_NOI02_QVEGT_timmean_1985_2014.nc NorESM_NOI03_QVEGT_timmean_1985_2014.nc NorESM_NOI_QVEGT_timmean_1985_2014.nc
cdo ensmean NorESM_NOI01_QVEGT_yearmean_1901_2014.nc NorESM_NOI02_QVEGT_yearmean_1901_2014.nc NorESM_NOI03_QVEGT_yearmean_1901_2014.nc NorESM_NOI_QVEGT_yearmean_1901_2014.nc



cdo ensmean NorESM_IRR01_Qle_timmean_1901_1930.nc NorESM_IRR02_Qle_timmean_1901_1930.nc NorESM_IRR03_Qle_timmean_1901_1930.nc NorESM_IRR_Qle_timmean_1901_1930.nc
cdo ensmean NorESM_IRR01_Qle_timmean_1985_2014.nc NorESM_IRR02_Qle_timmean_1985_2014.nc NorESM_IRR03_Qle_timmean_1985_2014.nc NorESM_IRR_Qle_timmean_1985_2014.nc
cdo ensmean NorESM_IRR01_Qle_yearmean_1901_2014.nc NorESM_IRR02_Qle_yearmean_1901_2014.nc NorESM_IRR03_Qle_yearmean_1901_2014.nc NorESM_IRR_Qle_yearmean_1901_2014.nc

cdo ensmean NorESM_NOI01_Qle_timmean_1901_1930.nc NorESM_NOI02_Qle_timmean_1901_1930.nc NorESM_NOI03_Qle_timmean_1901_1930.nc NorESM_NOI_Qle_timmean_1901_1930.nc
cdo ensmean NorESM_NOI01_Qle_timmean_1985_2014.nc NorESM_NOI02_Qle_timmean_1985_2014.nc NorESM_NOI03_Qle_timmean_1985_2014.nc NorESM_NOI_Qle_timmean_1985_2014.nc
cdo ensmean NorESM_NOI01_Qle_yearmean_1901_2014.nc NorESM_NOI02_Qle_yearmean_1901_2014.nc NorESM_NOI03_Qle_yearmean_1901_2014.nc NorESM_NOI_Qle_yearmean_1901_2014.nc

done


