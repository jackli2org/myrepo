node {
    def app
    def prefix = "licTest"
    def name = "myrepo"
    def docker_image = "${prefix}/${name}:DEV-${env.BUILD_ID}"

    stage("Pull GIT Repo") {
            checkout scm
    }

    stage("Build and start test image") {
            app = docker.build docker_image
    }
}
