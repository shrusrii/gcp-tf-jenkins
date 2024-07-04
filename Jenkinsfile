pipeline{
    agent any

environment {
    GOOGLE_APPLICATION_CREDENTIALS = credentials(‘gcp-key’)
    GIT_TOKEN = credentials(‘git-token’)
}

Stages{
   stage(‘Git checkout’) {
           steps{
                 git “”
             }
     }
    stage(’Terraform Init’){
            Steps{
                    Script{
                     Sh ‘terraform init’
                    }
               }
       }
      stage(’Terraform Plan’){
            Steps{
                    Script{
                     Sh ‘terraform plan -out=tfplan’
                    }
               }
       }

      stage(’Terraform Apply’){
            Steps{
                    Script{
                     Sh ‘terraform apply tfplan’
                    }
               }
       }
}
}
