Description
-----------

This is an experimental rails app "template" for my own pet projects.

Usage
-----

Suppose I want to create a new rails app called 'KillerApp'

1. Clone the repo to the *killer_app* folder:
```shell
git clone ssh://git@github.com/ordoghl/my_app_template.git killer_app
```

2. Create killer_app rvm gemset and rvmrc:
```shell
cd killer_app; rvm use @killer_app --create --rvmrc
```

3. Run bundler
```shell
bundle install
```

4. Rename the app using app:rename rake task:
```shell
rake app:rename['KillerApp']
```

4. Start the app using foreman:
```shell
foreman start
```

5. Have fun


