env=$1

if [ $env = "QA" ]
then
	sshpass -p ubuntu scp target/cloud.war ubuntu@172.17.0.2 /home/ubuntu/Devops/apachetomcat
	sshpass -p ubuntu@172.17.0.2 JAVA_HOME="/home/ubuntu/Devops/java_1.8.01""/home/ubuntu/Devops/apachetomcat/bin/startup.sh && bash"

elif [ $env = "SIT" ]
	sshpass -p ubuntu scp target/cloud.war ubuntu@172.17.0.3 /home/ubuntu/Devops/apachetomcat
        sshpass -p ubuntu@172.17.0.3 JAVA_HOME="/home/ubuntu/Devops/java_1.8.01""/home/ubuntu/Devops/apachetomcat/bin/startup.sh && bash"
fi

