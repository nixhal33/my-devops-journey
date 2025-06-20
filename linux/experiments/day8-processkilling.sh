# This script will show or for my practice 
# To see  if the the parent id is killed and child id become orphaned or get adopted by systemd 
# Then i have to remove or kill them individually and what if there is hundreds or thousands of stranded child id.
# To test out i am writing this script

#!/bin/bash
echo "Parent PID: $$"
sleep 1000 & 
child_pid=$!
echo "Child PID: $child_pid"
wait

