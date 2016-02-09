#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

# BasketBuild Upload Credentials
export UploadServer="s.basketbuild.com/webupload";
export UploadUserName="Username.s";
export UploadPassword="";
export UploadFolder="Path/To/Folder";

# Create  ~/.bash_android.basketbuild.**name**.rc with the exports to override the credentials
if [ -f ~/.bash_android.basketbuild.$1.rc ]; then
  source ~/.bash_android.basketbuild.$1.rc;
elif [ -f ~/.bash_android.basketbuild.main.rc ]; then
  source ~/.bash_android.basketbuild.main.rc;
fi;

echo "";
echo " [ Uploading to the server ]";
echo "";

SendFile="$1";
if [ ! -z "$SendFile" ] && [ -f "$SendFile" ] && [ ! -z "$UploadPassword" ]; then

  SendFileName=$(basename "$SendFile");
  SendFileExt=${SendFileName##*.};
  SendFileSize=$(stat -c "%s" "$SendFile");
  SendFileType='';

  if [ ! -z "$2" ]; then
    UploadFolder="$2";
  else
    UploadFolder="Android-Developers";
  fi;

  if [[ "$SendFileExt" =~ 'zip' ]]; then
    SendFileType='application/zip';
  fi;

  curl -L -# --dump-header .headers \
          -F "ftp_user=$UploadUserName" \
          -F "ftp_pass=$UploadPassword" \
          -F "openFolder=~$UploadFolder" \
          -F "ip_check=1" \
          -F "login=1" \
          -F "login_save=1" \
          -F "submit=Login" \
          "https://$UploadServer/" > /dev/null;

  curl -X POST -L -# --progress-bar -b .headers \
          -H "Cache-Control: no-cache" \
          -H "X-Filename: $SendFileName" \
          -H "X-Requested-With: XMLHttpRequest" \
          -H "X-File-Size: $SendFileSize" \
          -H "X-File-Type: $SendFileType" \
          -H "Content-Type: multipart/form-data" \
          --data-binary @"$SendFile" \
          -o .uploadoutputs \
          "https://$UploadServer/?ftpAction=upload&filePath=";

  if [ -f "./.headers" ]; then
    rm "./.headers";
  fi;

  if [ -f "./.uploadoutputs" ]; then
    rm "./.uploadoutputs";
  fi;

elif [ -z "$UploadPassword" ]; then
  echo "  FTP Credentials not found...";
else
  echo "  File '$SendFile' not found...";
fi;

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";

if [ -z "$3" ]; then
  read key;
fi;
echo "";
