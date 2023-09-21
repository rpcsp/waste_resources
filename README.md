
# Starting processes to waste CPU cycles and memory:

```
ubuntu:~/projects$ waste_resources/waste_cpu_nanny.sh &
[1] 474
ubuntu:~/projects$ waste_resources/waste_mem.py &
[2] 481
```

# Checking the processes

```
ubuntu:~/projects$ ps -ef | grep waste_
ubuntu     470     8 97 22:13 pts/0    00:00:21 /bin/bash ./waste_cpu.sh
ubuntu     474     9  0 22:13 pts/0    00:00:00 /bin/bash waste_resources/waste_cpu_nanny.sh
ubuntu     481     9  4 22:14 pts/0    00:00:00 /usr/bin/python waste_resources/waste_mem.py
ubuntu     486     9  0 22:14 pts/0    00:00:00 grep --color=auto waste_
```

# Stopping the processes

```
ubuntu:~/projects$ pkill -f waste_
[1]-  Terminated              waste_resources/waste_cpu_nanny.sh
[2]+  Terminated              waste_resources/waste_mem.py
```
