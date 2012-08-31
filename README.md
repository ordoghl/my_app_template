Description
-----------

This is an experimental rails app "template" for my own pet projects.

Usage
-----

Suppose I want to create a new rails app called 'KillerApp'

1. Download the master branch as a .tar.gz file
```shell
curl -L https://github.com/ordoghl/my_app_template/tarball/master > my_app_template.tar.gz
```

2. Extract it
```shell
tar xvzf my_app_template.tar.gz
```

3. Rename the extracted directory to *killer_app*
```shell
mv <extracted directory name> killer_app
```

3. Create killer_app rvm gemset and rvmrc:
```shell
cd killer_app; rvm use @killer_app --create --rvmrc
```

4. Run bundler
```shell
bundle install
```

5. Rename the app using app:rename rake task:
```shell
rake app:rename['KillerApp']
```

6. Start the app using foreman:
```shell
foreman start
```

7. Have fun


