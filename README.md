# Express-Beamer fork - template repository

To remove the original + the template repository's git history and initialize fresh local git, run the following script provided with the template  
`chmod +x .git-cleanup.sh && ./git-cleanup.sh`

Alternatively you can define a function to do the cloning and the cleanup for you.  
In fish:  
```fish
function new-pres --description 'Clone beamer template as fresh local git repo'
    if test (count $argv) -eq 0
        echo "Usage: new-pres <name>"
        return 1
    end

    set name $argv[1]
    git clone --depth 1 git@github.com:graue-gans/modern-beamer.git $name
    cd $name
    rm -rf .git
    git init
    git add .
    git commit -m "Initial commit"
end
```
