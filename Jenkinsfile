pipeline {
	agent any
	stages {
		stage('Git- Checkout') {
			steps {
					echo "Checking out for Git Repo" ;
					git branch: 'origin', url: 'https://github.com/NiranjanKolli47/pipelinetesting.git'
			}
		}
		
		stage ('Build') {
			steps {
					echo "Building the checked out project" ;
					bat 'test1.bat'
				}
			}
			
		stage ('Unit-Test') {
			steps {
					echo "Running the JUnit Tests" ;
					bat 'Unit.bat'
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
				
