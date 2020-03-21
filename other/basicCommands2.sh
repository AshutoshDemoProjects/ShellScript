
echo "Select Which operation you want to perform?"
select op in LoggedUser CurrentShell HomeDir OSType PathSetting WorkingDir LoggedNumUsers OSDetails AllShell MouseSetting CPUinfo MemoryInfo HDDinfo MountedFiles Exit
do
  case $op in
    LoggedUser)
      whoami
      ;;
    CurrentShell)
      echo $SHELL
      ;;
    HomeDir)
      echo $HOME
      ;;
    OSType)
      hostnamectl
      ;;
    PathSetting)
      echo $PATH
      ;;
    WorkingDir)
      pwd
      ;;
    LoggedNumUsers)
      who
      ;;
    OSDetails)
      cat /etc/os-release
      ;;
    AllShell)
      cat /etc/shells
      ;;
    MouseSetting)
      ;;
    CPUinfo)
      less /proc/cpuinfo
      ;;
    MemoryInfo)
      less /proc/meminfo
      ;;
    HDDinfo)
      parted -l
      ;;
    MountedFiles)
      df
      ;;
    Exit)
      break
      ;;
    *)
      echo "Wrong operation";
  esac
done