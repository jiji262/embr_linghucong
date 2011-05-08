 #! /bin/sh

# alert the user
echo "Setting up embr";
# grab a copy of ci reactor
curl -OL https://github.com/philsturgeon/codeigniter-reactor/tarball/master
# extract the tarball
tar -zxvf master
# remove the tarball
rm master
# copy the system folder into embr
cp -r philsturgeon-codeigniter-reactor-*/system system 
# merge cis application folder with embrs 
cp -nr philsturgeon-codeigniter-reactor-*/application/* application/ 
# remove the ci folder
rm -r philsturgeon-codeigniter-reactor-*/
# move into the app folder
cd application
# grab a copy of the ci templater
curl -OL http://williamsconcepts.com/ci/codeigniter/libraries/template/Template_1.4.1.zip
# unzip the archive
unzip Template_1.4.1.zip -x config/* docs/* views/*
# remove the template folder
rm Template_1.4.1.zip
# all done
echo "embr is ready to roll";