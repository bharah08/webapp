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
             
                sh 'mvn clean package'             
          }
        }
    
 }
}
