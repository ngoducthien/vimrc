# Sync Vim Settings with GitHub

This guide explains how to sync your Vim settings between your local machine and a GitHub repository.

## Syncing Vim Settings from GitHub to Local Vim

1. **Navigate to the Vim Configuration Repository**:
   Go to the GitHub folder containing your Vim configuration on your PC.

2. **Run the Update Script**:
   Execute the following command to pull the latest version of your personal Vim settings and copy them to `~/.vimrc` and `~/.vim`:

   ```bash
   ./update_vim_settings.sh
   ```
3. **Install Plugins**:
    After syncing, the plugins may not run properly. To install the plugins, open Vim and type the following command:
    ```bash
    :PlugInstall
    ```
4. **Update Plugins if Necessary**:
    If you need to update any plugins, you can do so by running:
    ```bash
    :PlugUpdate
    ```

## Syncing Local Vim Settings to GitHub

Copy Local Settings to GitHub: Copy the `~/.vimrc` and `~/.vim` directories to your GitHub vimrc folder. 

Commit Changes: Navigate to your GitHub repository in the terminal and run the following commands to stage, commit, and push the changes:

    ```bash
    git add ~/.vimrc ~/.vim
    git commit -m "Update Vim settings"
    git push
    ```

## Notes

Ensure you have a backup of your Vim settings before syncing.

Make sure your GitHub repository is set up correctly and you have the necessary permissions to push changes.

