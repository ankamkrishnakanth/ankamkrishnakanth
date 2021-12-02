: 'This script will setup website from tooplate.com
'

#taking user input for WEBURL
#read -p 'Enter web url:' WEBURL

#find the Dirname from url
#DIRNAME=$(echo $WEBURL | cut -d / -f5 | sed 's/.zip//' )

source /tmp/vars.txt
yum --help > /dev/null 2> /dev/null
if [ $? -eq 0 ]
then
    echo "Redhat OS detected"
    SVC=httpd
    PACKS="httpd unzip wget"
    echo
    echo
    echo "installing packages"
    yum install $PACKS -y
    echo ################

    #starting and enabling service
    echo
    echo
    echo "starting and enabling service"
    systemctl start $SVC
    systemctl enable $SVC

    #copy website data to doc root directory
    echo
    echo
    echo "copying website data"
    cd /tmp && wget $WEBURL
    cd /tmp/ && unzip $DIRNAME
    cp -r /tmp/$DIRNAME/* /var/www/html/

    echo ###############################
    echo
    echo "restarting service"
    systemctl restart $SVC
    echo ###############################

else
    echo ##############################
    echo "debian based package detected"
    echo ##############################
    SVC=apache2
    PACKS='apache2 unzip wget'


    echo "installing packages"
    apt update
    apt install $PACKS -y
    echo #############################

     # start and enable service
    echo "starting and enabling service"
    systemctl start $SVC
    systemctl enable $SVC
    echo ###############################

    #copy website data to doc root directory
    echo
    echo
    echo "copying website data"
    cd /tmp && wget $WEBURl
    cd /tmp/ && unzip 2116_blugoon.zip
    cp -r /tmp/2116_blugoon/* /var/www/html/

    echo ###############################
    echo
    echo "restarting service"
    systemctl restart $SVC
    echo ###############################
fi




                                                                                     

