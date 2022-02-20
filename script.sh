ls -l
success_status=0

for test_dir in `find ./test-values/* -type d` ;do      
    
    for values_files in `find $test_dir -name '*.yaml'`; do
        dir_name=`find $test_dir -type d -printf "%f\n"`
        file_name=`find $values_files -exec basename {} .yaml \;`
        echo $dir_name/$file_name
        # echo $values_files
    done
done