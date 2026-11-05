#!/bin/bash
# Linux Lab 2 — Operating Systems & Linux
# Every command below is the answer to the matching question in the lab sheet.
# "cur_dir" in the diagram is the home directory (~).

# ---------- Part 1 ----------
# 1. What is your current directory? (full path)
pwd                         # e.g. /home/<username>

# 2. Print the contents of the home directory
ls -l ~

# 3. Create an empty file letter1 in the home directory
touch ~/letter1

# 4. Copy letter1 to a file named letter2
cp ~/letter1 ~/letter2

# ---------- Part 2: build the hierarchy ----------
cd ~
mkdir -p kuku/dir1
mkdir -p kuku/dir2/dir_2 kuku/dir2/dir_3
mkdir -p dir3/dir_3/dir_3_1 dir3/dir_3/dir_3_2
touch kuku/dir1/file1.txt kuku/dir1/file2.txt kuku/dir1/aa.c kuku/dir1/bb.c
touch kuku/dir2/ff2.exe kuku/dir2/ff3.exe

# 2. Copy ff2.exe into dir_3_1
cp ~/kuku/dir2/ff2.exe ~/dir3/dir_3/dir_3_1

# 3. Copy ff3.exe into dir1
cp ~/kuku/dir2/ff3.exe ~/kuku/dir1

# 4. Delete directory dir_3_1 (not empty - it holds ff2.exe, so -r is needed)
rm -r ~/dir3/dir_3/dir_3_1

# 5. Delete file aa.c
rm ~/kuku/dir1/aa.c

# 6. Go to directory kuku/dir2
cd ~/kuku/dir2

# 7. Return to the home directory
cd ~                        # or just: cd

# 8. Create file let3 in kuku/dir2/dir_2
touch ~/kuku/dir2/dir_2/let3

# 9. Rename let3 to let_3
mv ~/kuku/dir2/dir_2/let3 ~/kuku/dir2/dir_2/let_3

# 10. Rename directory dir1 to dir_1
mv ~/kuku/dir1 ~/kuku/dir_1

# 11. Rename directory kuku to kuku_1
mv ~/kuku ~/kuku_1
