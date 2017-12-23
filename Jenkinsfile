node("docker") {
    docker.withRegistry('subhashsaxena10/wiremock-standalone', 'subhashsaxena10') {
    
        git url: "https://github.com/hashkarma/wiremock-docker.git", credentialsId: 'subhash.saxena@hotmail.com'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
        def app = docker.build "wiremockstandalone"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}