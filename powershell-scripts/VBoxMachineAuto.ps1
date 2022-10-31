#This is a powershell script for importing virtualbox machine from the internet from your server
#remember to $ Set-ExecutionPolicy unrestricted
#Этот скрипт нужен для развертывания виртуальных машин с сервера

wget "http://your-server/way/to/machine" -outfile "D:\where\to\put"
cd C:\way\to\virtualbox\directory\with\VBoxManage.exe
.\VBoxManage.exe unregistervm --delete "vmname" #if you have this vm installed and want to reput it
.\VBoxManage.exe import D:\machine_name.ova
.\VBoxManage.exe modifyvm "VMname" --memory <amount of RAM in mb> --cpus <number of cpus>
shutdown /s #optional, comment if don't need