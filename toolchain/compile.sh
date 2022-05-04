clear
pgrep u64view &>/dev/null || ./u64view/u64view -u u64.lab.home -z 3 -t </dev/null &>/dev/null &
java -jar ./KickAssembler/KickAss.jar ../source/main.asm -showmem
perl ./1541ultimate2-tools/1541u2.pl u64.lab.home -c run:../source/main.prg
echo -e
read -p "Press enter to re-try"
./compile.sh