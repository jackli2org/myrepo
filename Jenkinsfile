node {
    def app
    def prefix = "lictest"
    def name = "myrepo"
    def docker_image = "${prefix}/${name}:master-${env.BUILD_ID}"

    stage("Pull GIT Repo") {
            checkout scm
    }
    stage("Test") {
         sh 'pwd'
         sh 'ls'
         sh 'docker ps'
        // sh 'python --version'
        // sh 'docker-compose ps'
        // sh 'python --version'
        // sh 'docker-compose build'
        // sh 'docker-compose up'
        // sh 'docker-compose down'
        	// sh './test.sh'
        // sh 'cat mochawesome-report/mochawesome.json'
    }

    stage("Build and start test image") {
            app = docker.build docker_image
            app.inside {
                       sh 'pwd'
         sh 'ls'
        // sh 'docker-compose build'
        // sh 'docker-compose up'
        // sh 'docker-compose down'
              sh 'pwd'
              sh 'ls'
             // sh 'npm install'
              sh 'npm test'
              sh 'ls'
              sh 'echo "test passed"'
	    }
           // sh 'docker run app'
           // sh 'cd /var/lib/jenkins/workspace/myrepo'
           //  sh 'npm run mocha'
    }
    stage("Run test") {
        echo "start run test"
	try {
          sh 'pwd'
          sh 'ls'
          // sh 'docker-compose down'
         // step ([$class: 'CopyArtifact',
         //   projectName: 'myrepo',
         //   filter: 'mochawesome-report/*']);
	} catch (error) {
          echo error;
	} finally {
          // junit '*.xml'
	}
    }
   // stage('Results') {
   //   publishHTML([allowMissing: false,
   //      alwaysLinkToLastBuild: true,
   //      keepAll: true,
   //      reportDir: 
   //     'mochawesome-report/',
   //      reportFiles: 'mochawesome.html',
   //      reportName: 'Mocha Result Dashboard'
   //      ])
   //  }
   // post {
    //  failure {
       // mail to: jack.li2@nirvana-info.com, subject: 'The pipline failed'  
    //  }
   // }
}
