# Terraform Module Workspace 🏬

- This repository contions the module code with the version file 
- It includes terraform resource blocks (modules) for azure - aws and gcp cloud providers
- Once a module is created and pushed into the targeted location , the pipeline will start to run
- This pipeline in CI - will check for code validations like terraform validation and fmt
- In CD - it will create a automatic README.md file and publish the module in zipped fashion to the terraform-remote-modules repository.

### PreRequiste: ⏮️
- Create a github organization - to maintain short lived tokens
- Github Apps should be created.
- Github Apps should have a private key generated and should have appropriate permission for the repository so that it can be called
- Configure the Github App id and private key in the repository secrets / it can be configure in the organization secrets.
  
###  Files: 📂
- main.tf      - consist of resource block
- variables.tf - it has all the necessary variable for the resource block
- output.tf    - it contains output for a specific resource (which will be considered as the module outputs)
- readme.md    - user created readme file
- README.md    - Auto Create readme file - which has details about a complete module.
- version.json - it has following details
  
    ```
        {
            "modules":[
                {
                    "name": <NAME OF REMOTE MODULE>,
                    "version": <VERSION OF MODULE>,
                    "project" : <PROJECT NAME>,
                    "cloudprovider": <CLOUD PROVIDER NAME>
                }
            ]
        }
    ```
  - In the above file you can increment the versions which will create separate modules as needed in terraform-remote-module repository

### Pipelines: 🔰
| Workflow Name          | Description |
| :---------------- | :------: 
| z01-tf-module-creation-base.yml       |   it is the base pipeline from which the child workflows are called during the CI and CD.   | 
| z02-tf-versioning.yml                 |   to extract the version files and pass it to successive workflows , here simple validation is also done.   | 
| z03-tf-validation.yml                 |   here the terraform modules are validated and against terraform validate command to verify the compile time errors.  | 
| z04-tf-documentation.yml       |   this is to create the auto README.md file based on the variables and ouputs tf files.  | 
| z05-tf-publish-module.yml      |   this is to publish the zipped module files into the terraform-remote-modules with specified version.   | 
| __#cloud_provider_name#__-__#resourcename#__-module.yml     |   this pipeline are the base one which calls the *creation-base.yml file based on modular level with exact path.  | 

### Execution Diagram: 🖼️

![image](https://github.com/terraform-modules-dwy/terraform-module-workspace/assets/156210181/81ef1678-0eab-4eb3-8744-61852c738462)


