
echo "Select Which operation you want to perform?"
select op in ShowTodayDateTime CurrentDirectory Calendar WriteLetter Exit
do
  case $op in
  ShowTodayDateTime)
    date
    ;;
  CurrentDirectory)
    pwd
    ;;
  Calendar)
    echo -n "Enter year:";
    read yr;
    cal $yr;
    ;;
  WriteLetter)
    echo -n "enter file name:";
    read fileName;
    nano $fileName;
    ;;
  Exit)
      break
      ;;
  *)
      echo "Wrong operation";
  esac
done