node {
    def app
    def prefix = "lictest"
    def name = "myrepo"
    def docker_image = "${prefix}/${name}:master-${env.BUILD_ID}"

    stage("Pull GIT Repo") {
            checkout scm
    }

    stage("Build and start test image") {
            app = docker.build docker_image
           // sh 'cd /var/lib/jenkins/workspace/myrepo'
           //  sh 'npm run mocha'
    }
    stage("Run test") {
        echo "start run test"
	try {
          sh 'docker-compose down'
          sh 'docker-compose build'
          sh 'docker-compose up'
	  // sh 'npm run mocha'
          step ([$class: 'CopyArtifact',
            projectName: 'myrepo',
            filter: 'mochawesome-report/*']);
	} catch (error) {
          echo error;
	} finally {
          // junit '*.xml'
	}
    }
    stage('Results') {
      publishHTML([allowMissing: false,
         alwaysLinkToLastBuild: true,
         keepAll: true,
         reportDir: 
        'mochawesome-report/',
         reportFiles: 'mochawesome.html',
         reportName: 'Mocha Result Dashboard'
         ])
   }
}
