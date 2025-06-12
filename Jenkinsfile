pipeline {
    agent any

    environment {
        TF_VAR_region = 'us-east-1'   // Example variable
        TF_IN_AUTOMATION = 'true'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git credentialsId: 'your-git-creds-id', url: 'https://github.com/your-org/terraform-repo.git', branch: 'main'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init -input=false'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            when {
                branch 'main' // or any logic you want to control apply
            }
            steps {
                input message: "Do you want to apply Terraform changes?"
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }

    post {
        success {
            echo 'Terraform pipeline completed successfully.'
        }
        failure {
            echo 'Terraform pipeline failed.'
        }
    }
}
