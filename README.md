# Git Scripts

These are simple Bash scripts that allows users to easily add files to a Git repository, provide a commit message, and push the changes to the remote repository. It provides a streamlined way to perform these common Git operations.

## Features

`push2git.sh`

- Interactive prompt for adding files to Git, with suggestions for filenames.
- Validation to ensure that files are successfully added to the Git repository.
- User input prompt for a commit message.
- Validation to ensure that the commit message contains at least three words.
- Automated commit and push of changes to the remote repository.
- Error handling to display helpful error messages and gracefully exit on failure.

`gitts`

- Add new files quickly. It adds the last modified file to the staging area.
- Prompts the user for a commit message.

## Getting Started

### Prerequisites

To use any of the scripts, you need to have the following prerequisites installed on your system:

- Git

### Clone the Repository

To clone the repository, run the following command in your terminal:

```
git clone https://https://github.com/Nadira3/Bash-Scripts.git
```

### Usage

1. Navigate to the cloned repository directory:

   ```
   cd Bash-Scripts
   ```

2. Make the script executable:

   ```
   chmod +x *.sh
   ```

3. Run the script:

   ```
   ./push2git.sh
   ```

   If not root, run the script as root:

   ```
   sudo ./push2git.sh
   ```

4. Follow the prompts to add files to Git, provide a commit message, and push the changes.

## Contributing

Contributions to the Git Add and Push Script are welcome! If you want to contribute to the codebase, please follow these steps:

1. Fork the repository on GitHub.
2. Clone your forked repository to your local machine.
3. Create a new branch for your feature or bug fix.
4. Make your modifications and commit the changes.
5. Push your branch to your forked repository on GitHub.
6. Submit a pull request to the main repository.

Please ensure that your contributions adhere to the coding conventions and are accompanied by clear commit messages.
