0x02. Shell, I/O Redirections and filters
0. Hello World => This script prints "Hello, World", followed by a new line to the stdout.
1. Confused smiley
A script that displays a confused smiley
Let's display a file
2. Let's display a file
=> This script displays the content of /ect/passwd file
3. What about 2?
=> This script displays the content of two files /etc/passwd and etc/hosts
4. Last lines of a file
=> This script displays the last 10 lines of /etc/passwd
5. I'd prefer the first ones actually
=> This script displays the first 10 lines of /etc/passwd
6. Line #2
=> This script displays the third line of the file iacta
7. It is a good file that cuts without making a noise
=> This file creates a file containing the text 'Best School' ending by a new line.
9. Duplicate last line
=> This script duplicates the last line of the file iacta
8. Save current state of directory
=> This script writes to the file ls_cwd_content the result of the command ls -la. If the file exist, it should be overwritten otherwise it should be created.
10. No more javascript
=> This script deletes all regular files(not directories) with a .js extension that are present in the current directory and all its subfolders.
11. Don't just count your directories,make your directories count
=> This script counts the number of directories and sub-directories in the current directory. The current and parent directories should be taken into account. Hidden directories should be counted.
12. What's new
=> This script displays the 10 newest files in the current directory: one file per line, sorted from the neoldest.
13. Being unique is better than being perfect
=> This script takes a list of words as input and prints only words that appear exactly once: Input format; One line, one word, Output format; One line, one world, Words should be sorted.
14. It must be that file
=> This script displays lines containing the pattern "root" from the file /etc/passwd.
15. Count that word
=> this script will display the number of lines that contain the pattern "bin" in the file /etc/passwd.
16. What's next
=> This script will display lines containing the pattern "root" and 3 lines after them in the file /etc/passwd.
17. I hate bins
=> This script will display all lines in the file /etc/passwd that do not contain the pattern "bin".
18. Letters only please!
=> this script will display all lines of the files /etc/ssh/ssh_config starting with a letter. Include capital letters as well.
19. A - Z
=> This script will replace all characters A and c from input to z and e respectively.
20. Without C, you would live in hiago
=> This script removes all letters c and C from input.
21. esreveR
=> This script reverses it input.
22. DJ Cut Killer 
=. This script displays all users and their home directories, sorted by users. Based on the file /etc/passwd.
23. Empty casks make the most noise
=> This script finds all empty files and directories in the current directory and all sub-directories. Only names of files and directories should be displayed(not the entire path). Hidden files should be listed. The lising should end with a new line. No basename, grep, egrep, fgrep or rgrep.

24. A gif is worth ten thousand words
=> This script lists all the files with a .gif extension in the current directory and all its sub-directories. 
25. Acrostic
=> This script decodes acrostic that use that use the first letter of each line.
26. The biggest fan
=> This script parses web servers logs in TSV formats as input and displays the 11 hosts or IP addresses which did the most requests. Order by number of request, most active host or IP at top.
