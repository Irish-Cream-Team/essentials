ls -l
success_status=0
for test_dir in `find ./test/values/* -type d` ;do      
    for values_files in `find $test_dir -name '*.yaml'`; do
        dir_name=`find $test_dir -type d -printf "%f\n"`
        file_name=`find $values_files -exec basename {} .yaml \;`
        helm template essentials ./ -f $values_files --output-dir ./test/output/$dir_name/$file_name
    done
done