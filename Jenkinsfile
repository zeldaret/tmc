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
                sh 'make tools'
            }
        }
        stage('Build') {
            steps {
                sh 'make all -j'
            }
        }
        stage('Report Progress') {
            when {
                branch 'master'
            }
            steps {
                sh 'mkdir reports'
                sh 'python3 progress.py csv >> reports/progress-tmc-nonmatching.csv'
                sh 'python3 progress.py csv -m >> reports/progress-tmc-matching.csv'
                sh 'python3 progress.py shield-json > reports/progress-tmc-shield.json'
                stash includes: 'reports/*', name: 'reports'
            }
        }
        stage('Update Progress') {
            when {
                branch 'master'
            }
            agent {
                label 'zeldaret_website'
            }
            steps {
                unstash 'reports'
                sh 'cat reports/progress-tmc-nonmatching.csv >> /var/www/zelda64.dev/assets/csv/progress-tmc-nonmatching.csv'
                sh 'cat reports/progress-tmc-matching.csv >> /var/www/zelda64.dev/assets/csv/progress-tmc-matching.csv'
                sh 'cat reports/progress-tmc-shield.json > /var/www/zelda64.dev/assets/csv/progress-tmc-shield.json'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
