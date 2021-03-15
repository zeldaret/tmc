pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                echo 'Setting up...'
                sh 'cp /usr/local/etc/roms/baserom_tmc.gba baserom.gba'
                sh 'make -j setup'
                git clone https://github.com/zeldaret/tmc
                git clone https://github.com/pret/agbcc

                cd ./agbcc
                sh build.sh
                sh install.sh ../tmc
            }
        }
        stage('Build') {
            steps {
                sh 'make -j'
            }
        }
        stage('Report Progress') {
            when {
                branch 'master'
            }
            steps {
                sh 'python3 progress.py >> /var/www/html/reports/progress_tmc.csv'
                sh 'python3 progress.py -m >> /var/www/html/reports/progress_tmc_matching.csv'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
