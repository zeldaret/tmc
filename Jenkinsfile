pipeline {
    agent {
        label 'tmc'
    }

    stages {
        stage('Setup') {
            steps {
                sh 'cd ${AGBCC} && ./install.sh ${WORKSPACE} && cd ${WORKSPACE}'
                sh 'cp /usr/local/etc/roms/tmc.us.gba baserom.gba'
                sh 'cp /usr/local/etc/roms/tmc.demo.gba baserom_demo.gba'
                sh 'cp /usr/local/etc/roms/tmc.demo.jp.gba baserom_demo_jp.gba'
                sh 'cp /usr/local/etc/roms/tmc.jp.gba baserom_jp.gba'
                sh 'cp /usr/local/etc/roms/tmc.eu.gba baserom_eu.gba'
                sh 'make -j setup'
            }
        }
        stage('Build') {
            steps {
                sh 'make usa demo_usa jp demo_jp eu -j'
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
