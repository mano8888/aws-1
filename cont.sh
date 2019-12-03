manoj=$1

echo "creating containers like $manoj"
 sleep 1;

 for i in `seq $manoj`
 do
	 echo "========================================="
	 echo "creating www.manoj $i containers..................."
	 sudo docker run -it --name www.manoj$i mano8888/concentrix /bin/bash
	 sleep 1;
	 echo "www.manoj $i containers has been created"
 done

