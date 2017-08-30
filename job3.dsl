pipelineJob('job3_pipeline') {
    concurrentBuild(false)
    definition {
        cpsScm {
            scm {
                gitSCM {
                    userRemoteConfigs {
                        userRemoteConfig {
                            name(null)
                            refspec(null)
                            url('https://github.com/adamjkeller/jenkinsworld-jobs.git')
                            credentialsId(null)
                        }
                    }
                    branches {
                        branchSpec {
                            name('*/master')
                        }
                    }
                    doGenerateSubmoduleConfigurations(null)
                    browser(null)
                    gitTool(null)
                    extensions {
                        cleanBeforeCheckout()
                    }
                }
            }
            scriptPath('Jenkinsfile3')
        }
        triggers {
            scm('H/5 * * * *')
        }
    }
}
