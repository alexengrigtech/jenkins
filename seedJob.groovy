pipelineJob('seed-job') {
    description('Seed-job to register jobs.')

    definition {
        cpsScm {
            scm {
                github("alexengrig/jenya-seed-job")
            }
        }
    }
}
