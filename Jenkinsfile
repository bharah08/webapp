pipeline {
    agent any
	
	  tools
    {
       maven 'maven-3.8.6'
    }
	triggers {
  pollSCM 'H/1 * * * * '
}
    options {
  buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '30', numToKeepStr: '3')
  timestamps()
}
 stages {
      stage('pulling the code from git') {
           steps {
             
                git branch: 'main', url: 'https://github.com/bharah08/webapp.git'
             
          }
        }
	 stage('build the package') {
           steps {
             
                bat 'mvn clean package'             
          }
        }
        stage('deploy to container') {
           steps {
                    deploy adapters: [tomcat8(credentialsId: '169b07d7-3fd5-4f69-a398-b572751abd3b', path: '', url: 'http://localhost:8088/')], contextPath: 'webapp', war: 'target/*.war'
               
          }
        }
 }
}
