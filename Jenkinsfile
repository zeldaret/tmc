pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                echo 'Setting up...'
                sh 'cp /usr/local/etc/roms/baserom_tmc.gba baserom.gba'
                sh 'make -j setup'
            }
        }
        stage('Build') {
            when {
                not {
                    branch 'master'
                }
            }
            steps {
                sh 'make -j'
            }
        }
        stage('Report Progress') {
            when {
                branch 'master'
            }
            steps {
                sh 'python3 progress.py -c >> /var/www/html/reports/progress.csv'
                sh 'python3 progress.py -mc >> /var/www/html/reports/progress_matching.csv'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}