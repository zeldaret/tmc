pipeline {
    agent {
        label 'tmc'
    }

    stages {
        stage('Setup') {
            steps {
                sh 'cd ${env.AGBCC} && ./install.sh ${WORKSPACE} && cd ${WORKSPACE}'
                sh 'cp /usr/local/etc/roms/tmc.us.gba baserom.gba'
                sh 'make -j setup'
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
                sh 'mkdir reports'
                sh 'python3 progress.py >> reports/progress_tmc.csv'
                sh 'python3 progress.py -m >> reports/progress_tmc_matching.csv'
                stash includes: 'reports/*', name: 'reports'
            }
        }
        stage('Update Progress') {
            when {
                branch 'master'
            }
            agent {
                label 'master'
            }
            steps {
                unstash 'reports'
                sh 'cat reports/progress_tmc.csv >> /var/www/html/reports/progress_tmc.csv'
                sh 'cat reports/progress_tmc_matching.csv >> /var/www/html/reports/progress_tmc_matching.csv'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
