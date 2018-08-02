function build {
    echo "##########################################"
    echo "Adding necessary components for project..."
    cmake ..
    echo "##########################################"
    echo "Building project..."
    make
}

for i in "$@"
do
case $i in
    build)
    build
    ;;
    run)
    build
    echo "##########################################"
    echo "Running project"
    ./data_structure
    ;;
    clean)
    echo "##########################################"
    echo "Cleaning build folder"
    find . ! -name 'make_proj.sh' -type d -exec rm -rf {} +
    find . ! -name 'make_proj.sh' -type f -exec rm -f {} +
    ;;
    *)
            # unknown option
    ;;
esac
done
