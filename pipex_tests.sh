echo "This is the content for file1.\\nola\\nola" > a
touch b c d e f g h i	
echo test1 - sort reverse
valgrind ./pipex a "sort -r" " uniq -c" b
echo \\n
echo test2 - Lines with file
valgrind ./pipex a "grep file" "wc -w" c
echo \\n
echo test3 - Counts files folder
valgrind ./pipex a "ls -l" "wc -l" d
echo \\n
echo test4 - Counts lines
valgrind ./pipex a "wc -l" "cat" e
echo \\n
echo test5 - Unique lines + sort
valgrind ./pipex a "sort" "uniq -c" f
echo \\n
echo test6 - Number bytes
valgrind ./pipex a "cat" "wc -c" g
echo \\n
echo test7 - Lines with error
valgrind ./pipex a "grep 'error'" "wc -l" h
echo \\n
echo test8 - Sort a
valgrind ./pipex a "sort" "cat" i
echo \\n
