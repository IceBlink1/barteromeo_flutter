# foreach dir
dart run build_runner build
cd packages
for d in */; do
    cd "$d"
    echo "$d"
    dart run build_runner build
    echo "\n"
    cd ..
done
