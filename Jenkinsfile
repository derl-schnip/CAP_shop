@Library('piper-lib-os') _
node() {
    stage('prepare') {
        checkout scm
        setupCommonPipelineEnvironment script:this
    }
    stage('build') {
      bat 'cds deploy --to sqlite:sqlitetst.db'
      bat 'mbt init'
      bat 'mbt build -p cf'
    }
    stage('deploy') {
      bat 'cf7 login -a https://api.cf.eu10.hana.ondemand.com -u alex08021994@tut.by -p Schnip011 -o 91ed8854trial_org -s dev'
      bat 'cf7 deploy ./mta_archives/capshop_1.0.0.mtar --abort-on-error -f'
    }
}
