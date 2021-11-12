pipeline {
	agent any
	stages {
		stage('Compile') {
			steps {
					echo "Compiled Successfully" ;
			}
		}
		
		stage ('JUnit') {
			steps {
					echo "JUnit Passed Successfully" ;
				}
			}
			
		stage ('Quality-Gate') {
			steps {
					echo "SonarQube Quality Gate Passed Successfully" ;
				}
			}
				
		stage ('Deploy') {
			steps {
					echo "Pass" ;
				}
			}
			
		}
		Post {
			always {
				echo "This is will always run"
				}
			success {
				echo " This will run only if successful"
				}
			failure {
				echo " This will run only if failed"
				}
			unstable {
				echo ' This will run only if run was marked as unstable'
				}
			changed {
				echo ' This will run only if the state of the pipeline has changed'
				echo ' for example if the pipeline was previoulsy failing, but it is successful'
				}
			}
		}
				