pipeline{
    agent any
    environment {
        PYTHON = "C:\\Users\\sarfa\\AppData\\Local\\Programs\\Python\\Python314\\python.exe"
    }
    stages{
        stage('checkout code') {
            steps {
                checkout scm
            }
        }
        stage("creating image") {
            steps {
                bat "docker build -t app1 ."
            }
        }
        stage("creat container"){
            steps{
                bat "docker run -d -p 8501:8501 app1"
            }
        }
    }

}