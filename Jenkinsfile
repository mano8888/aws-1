pipeline{

agent any

stages{

stage('scm checkout'){
steps{
sh "git clone https://github.com/mano8888/aws-1.git"
}
}
stage('mvn build'){
steps{
sh "mvn clean -f aws-1"
}
}
stage('test'){
steps{
sh  "mvn test -f aws-1"
}
}
stage('deploy'){
steps{
sh "mvn package -f aws-1"
}
}
}
}
good	