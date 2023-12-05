pipelineJob('seed-job') {
    description('Seed-job to generate items.')

    definition {
        cpsScm {
            scm {
                github('alexengrigtech/jenkins-seed-job')
            }
        }
    }
}
