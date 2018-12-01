# syntastic_gradle
script for vim plugin 'syntastic' to sync with gradle project with android plugin applied

## Installation && Usage
Simply put syntastic.gradle & syntastic_gradle_sync.sh in same directory, let's say ~/bin/,
and add exec permission for syntastic_gradle_sync.sh
```shell
chmod +x ~/bin/syntastic_gradle_sync.sh
```
then add alias
```shell
alias syntastic_gradle_sync="~/bin/syntastic_gradle_sync.sh"
```

and in your android project root directory, run syntastic_gradle_sync. 
it will generate .syntastic_javac_config file for vim syntastic plugin with all dependencies jar included.
