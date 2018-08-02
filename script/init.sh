default_dir="/Users/ducnguyen/DucNguyenWorkspace/algorithm/src"

function create_new_project() {
	echo "Creating project $1"
	cp -rv $default_dir"/master_structure/default_template" $default_dir"/"$1
	echo "Done creating project $1"
}

for i in "$@"
do
case $i in
    start)
	new_project=$2
	if [ -z "$2" ]
  	then
    	echo "[ERROR] Please select a name for the project"
    	exit
	fi
	create_new_project $2
	shift
	shift
    ;;
    *)
        # unknown option
    ;;
esac
done


