pipeline {
    agent any

    environment {
        // Headless display for Linux Jenkins agents
        DISPLAY = ':99'
    }

    stages {
        stage('Checkout Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/learningspace1813/robotframewrk-qweb.git'
            }
        }

        stage('Setup Python Environment') {
            steps {
                sh 'python3 -m venv venv'
                sh '. venv/bin/activate && pip install --upgrade pip'
                sh '. venv/bin/activate && pip install -r requirements.txt'
                // output file is not there then create mkdir
                bat 'if not exist results mkdir results'
            }
        }

        stage('Run QWeb Tests') {
            steps {
                sh '''
                    Xvfb :99 -ac &
                    . venv/bin/activate
                    robot --outputdir results tests/
                '''
            }
        }
    }

    post {
        always {
            // Publish Robot Framework native reports
            robot outputPath: 'results'

            // Publish HTML reports
            publishHTML(target: [
                allowMissing: true,
                alwaysLinkToLastBuild: true,
                keepAll: true,
                reportDir: 'results',
                reportFiles: 'log.html,report.html',
                reportName: 'Robot Framework Reports'
            ])

            // Archive screenshots & logs
            archiveArtifacts artifacts: 'results/*', allowEmptyArchive: true
        }
    }
}
