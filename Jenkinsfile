pipeline{
    agent any
    tools {
        terraform 'Terraform-11'
    }
    stages{
        stage('Git Checkout'){
            steps{
                git credentialsId: 'f9624b8e-eda2-4fc0-9d90-cc31ef369f24', url: 'https://github.com/driverroo/iac-demo'
            }
        }
        stage('Terraform init'){
            steps{
                sh label: '', script: 'terraform init'
            }
        }
        stage('Terraform apply'){
            steps{
                sh label: '', script: 'terraform apply --auto-approve'
            }
        }
    }
}
