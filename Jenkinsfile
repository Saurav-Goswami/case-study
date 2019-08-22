pipeline {

    agent any
    
    environment {
        PASS = credentials('registry-pass') 
    }

    stages {

        stage('Build') {
            steps {
                sh '''
                    ./case-study/build/mvn.sh mvn -B -DskipTests clean package
                    ./case-study/build/build.sh

                '''
            }
        }

        stage('Test') {
            steps {
                sh './case-study/test/mvn.sh mvn test'
            }

            post {
                always {
                    junit 'discovery-service/target/surefire-reports/*.xml'
                }
            }
        }

        stage('Push') {
            steps {
                sh './case-study/push/push.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh './case-study/deploy.sh'
            }
        }
    }
}

