
Continuous Deployment Pipeline for Flask Application using GitHub Actions
Components of the Solution:
GitHub Actions:

What: GitHub Actions is an automation platform provided by GitHub that enables CI/CD workflows directly within a repository. It helps in building, testing, and deploying applications.
Relation: In the solution, GitHub Actions is responsible for automating the process of testing the Flask application. If tests pass, it further initiates the deployment process to update the application on the server.

SSH (Secure Shell Protocol):

What: SSH is a cryptographic protocol that allows secure communication over an unsecured network. It's commonly used for remote server access and management.
Relation: After GitHub Actions verifies the application, it utilizes an SSH connection to securely access the remote server (hosted on Digital Ocean) and deploy the latest code.

Digital Ocean:

What: Digital Ocean is a cloud infrastructure provider offering various cloud services, including Droplets, which are virtual private servers.
Relation: The Flask application is hosted on a Droplet on Digital Ocean. When GitHub Actions triggers the deployment, it's this Droplet that gets updated with the new version of the app.

Challenges Faced:
SSH Key Authentication:

Problem: There was an issue with the GitHub runner not recognizing the private SSH key. This was crucial for secure communication with the Digital Ocean server.
Solution: By setting up the private key in the GitHub secrets and adjusting the .yml workflow file, I was able to resolve the issue and establish a secure connection.

Bash Script Execution:

Problem: The deployment process also involved executing a Bash script. The script was not executing due to permission issues.
Solution: This was resolved by ensuring proper execution permissions for the Bash script using the chmod +x command.

Continuous Testing:

Problem: Ensuring that the Flask application was tested continuously before deployment was a challenge.
Solution: Integrated testing into the GitHub Actions workflow. This ensured that the application was always in a deployable state after every push.

Additional Notes:

I had some trouble wrapping my head around the right use of the ssh keys and the difference between an ssh key and a deploy key and the secrets in github.
But when I grasped it, it made sense. 
